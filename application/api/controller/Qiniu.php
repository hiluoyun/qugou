<?php

namespace app\api\controller;

use app\common\controller\Api;
use Qiniu\Auth;
use Qiniu\Storage\UploadManager;
use think\Config;
use app\admin\model\QuGoods;
use app\admin\model\QuDetails;
use app\admin\model\QuAd;
use PHPExcel_IOFactory;
use PHPExcel;


class Qiniu extends Api
{
	// 需要填写你的 Access Key 和 Secret Key
	private $accessKey = '2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ';
	private $secretKey = '0YjDdiDUKV0PxAWoYVFOgXhfIFjNNXzXlocqKoHg';
	private $bucket = 'qu-gou';
	private $localRoot = "temp/";
	private $uploadPath = ['1'=>'home_pics/', '2'=>'detail_pics/', '3'=>'videos/', '4'=>'ad_pics/'];

	public function init_qiniu()
	{
		// 构建鉴权对象
		/*$this->accessKey = config::get('qiniu_accessKey');
		$this->secretKey = config::get('qiniu_secretKey');
		$this->bucket = config::get('qiniu_bucket');
		$this->localRoot = config::get('qiniu_localRoot');
		$this->uploadPath = config::get('qiniu_uploadPath');*/
		
		$auth = new Auth($this->accessKey, $this->secretKey);
		// 生成上传 Token
		$token = $auth->uploadToken($this->bucket);
		return $token;
	}

	public function list_dir($path)
    {
        $file_list = [];
        if (is_dir($path)){
            if($handle = opendir($path)){

                while(false !== ($file = readdir($handle))){
                    //echo "test".PHP_EOL;
                    if ($file != '.' && $file != '..' && $file != 'Thumbs.db')
                        $file_list[] = $file;
                }
            }
            closedir($handle);
        }
        return $file_list;
    }


    public function db_save_home_pics($id, $row)
    {
    	$goodsModel = new QuGoods();
    	$data = [];
    	foreach($row as $url){
    		$data[] = ['desc'=>'', 'url'=>$url];
    	}
    	$json_data = json_encode($data, JSON_UNESCAPED_UNICODE);
    	$goodsModel->save(['home_url'=> $json_data ], ['id'=>intval($id)] );
    }

    public function db_save_detail_pics($goods_id, $row)
    {
    	$detailsModel = new QuDetails();
    	$data = [];
    	foreach($row as $url){
    		$data[] = ['desc'=>'', 'url'=>$url];
    	}
    	$json_data = json_encode($data, JSON_UNESCAPED_UNICODE);
    	$detailsModel->where('goods_id', $goods_id)
    	->update(['img_urls' => $json_data]);
    }
    public function db_save_videos($goods_id, $row)
    {
    	$detailsModel = new QuDetails();
    	$data = [];
    	foreach($row as $url){
    		$data[] = ['desc'=>'', 'url'=>$url];
    	}
    	$json_data = json_encode($data, JSON_UNESCAPED_UNICODE);
    	$detailsModel->where('goods_id', $goods_id)
    	->update(['video_urls' => $json_data]);
    }

    public function db_save_ad_pics($goods_id, $row)
    {
    	//var_dump($row);
    	$adModel = new QuAd();
    	$data = $row[0];
        $ret = $adModel
            ->where('goods_id', $goods_id)
            ->field('count(id) as cnt')
            ->select();
        
        if ($ret[0]['cnt'] >0){
        	$adModel->where('goods_id', $goods_id)
            	->update(['img_url' => $data]);
        }else{
            $adModel->data(['img_url'=>$data, 'desc'=>'', 'goods_id'=>$goods_id ]);
    		$adModel->isUpdate(false)->save();
        }
    }

    public function db_dispatch($cate, $id, $row)
    {
    	switch ($cate) {
    		case '1':
    			$this->db_save_home_pics($id, $row);
    			break;
    		case '2':
    			$this->db_save_detail_pics($id, $row);
    			break;
			case '3':
    			$this->db_save_videos($id, $row);
    			break;
			case '4':
    			$this->db_save_ad_pics($id, $row);
    			break;
    		default:
    			var_dump($cate);
    			break;
    	}
    	
    }

    public function  cropAdPic($fileDir, $filename){
    	$rate = 3/5;
    	$image = \think\Image::open($fileDir.$filename);
    	$width = $image->width();
    	$height = $image->height();
    	$base_len = [];
    	$cropxy = [];
    	if ($width * $rate == $height){
    		return true;
    	}else if($width * $rate > $height){
    		for ($i = $height; $i>0; $i--){
    			$tmp = $i / $rate;
    			if (floor($tmp) == $tmp){
    				$base_len[1] = $i;
    				$base_len[0] = $i / $rate;
    				break;
    			}
    		}
    		$cropxy[1] = $height - $i;
    		$offset = $width - ($base_len[1] / $rate);
    		$cropxy[0] = floor($offset/2);
    	}else{
    		for($i = $width; $i>0;$i--){
    			$tmp = $i*$rate;
    			if (floor($tmp) == $tmp){
    				$base_len[0] = $i;
    				$base_len[1] = $i*$rate;
    				break;
    			}
    		}
    		$cropxy[0] = $width - $i;
    		$offset = $height - ($base_len[0] * $rate);
    		$cropxy[1] = floor($offset/2);
    	}
    	$image->crop($base_len[0], $base_len[1],$cropxy[0], $cropxy[1])->save($fileDir.$filename);
    	return false;
    }

    public function writeExcel($dirList)
    {
    	if (empty($dirList)){
    		exit();
    	}
    	$objPHPExcel = new PHPExcel();                     //实例化一个PHPExcel()对象
		$objSheet = $objPHPExcel->getActiveSheet();        //选取当前的sheet对象
		$head = ['序号', '商品id', '描述', '名称'];
		$dataList = [];
		$dataList[] = $head;
		$index = 1;
		sort($dirList);
		foreach($dirList as $g_id){
			$dataList[] = [$index, $g_id, '', ''];
			$index++;
		}
		$objSheet->fromArray($dataList);  //利用fromArray()直接一次性填充数据
		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel,'Excel5');   //设定写入excel的类型
		$date = date('Y-m-d');
		$objWriter->save('temp/test/video_desc_'.$date.'.xls');       //保存文件
    }

	public function qiniu_upload()
	{
		//1 首页图片 2 图片详情  3 video 4 广告
		$cate = ['1'=>'首页图片', '2'=>'详情图片', '3'=>'videos', '4'=>'广告图片'];
		$uploadCate = input('category', '1');
		
		// sleep(10);
		
		echo "上传种类 => ".$cate[$uploadCate].PHP_EOL;
		// exit();
		$curPath = $this->localRoot.$this->uploadPath[$uploadCate];
		$dirList = $this->list_dir($curPath);
		$token = $this->init_qiniu();
		if(empty($dirList)){
			echo "数据为空".PHP_EOL;
			exit();
		}
		
		if ($uploadCate == '3'){
			$this->writeExcel($dirList);
		}

		
		foreach($dirList as $dir){
			$fileDir = $curPath.$dir.'/';
			$file_list = $this->list_dir($fileDir);
			$row = [];
			foreach($file_list as $file){
				$filePath = $fileDir.$file;
				if ($uploadCate == '4'){
					$this->cropAdPic($fileDir, $file);
					//exit();
				}

				$key = $this->uploadPath[$uploadCate].$dir.'/'.$file;
				// 初始化 UploadManager 对象并进行文件的上传。
				$uploadMgr = new UploadManager();
				// 调用 UploadManager 的 putFile 方法进行文件的上传。
				list($ret, $err) = $uploadMgr->putFile($token, $key, $filePath);
				if ($err !== null) {
				    var_dump($err);
				    exit();
				}else{
					$row[] = $ret['key'];
				} 
			}
			$this->db_dispatch($uploadCate, $dir, $row);
			echo "商品id: ".$dir.PHP_EOL;
		}
		echo "上传七牛云成功！".PHP_EOL;
	}
	

    public function _initialize()
    {
        parent::_initialize();
    }

    public function index()
    {
        $result = ['code'=>200,'msg'=>'success'];
        return json($result);
    }



}
