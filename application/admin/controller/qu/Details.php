<?php

namespace app\admin\controller\qu;

use app\common\controller\Backend;
use app\admin\controller\qu\Goods;
use app\admin\model\QuDetails;
use app\admin\model\QuGoods;
use think\Controller;
use think\Request;
use think\Config;
use PHPExcel_IOFactory;
use PHPExcel;
/**
 * 商品详情
 *
 * @icon fa fa-circle-o
 */
class Details extends Backend
{
    
    /**
     * QuDetails模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('QuDetails');

    }
    
    public function upload_video_desc()
    {
        if ($this->request->isAjax())
        {
            return $this->index();
        }
        return $this->view->fetch();
    }

    public function view_detail_pics($goods_id = NULL,  $imgstrs = NULL)
    {
        if ($goods_id==null || $imgstrs==null){
            dump("goods_id 为空");
            exit();
        }
        if ($this->request->isAjax())
        {
            return $this->index();
        }
        $goodsModel = new QuGoods();
        $ret = $goodsModel
            ->where('id', $goods_id)
            ->field('name')
            ->select();

        $pic_urls = explode(";", $imgstrs);
        $len = count($pic_urls);
        if ($pic_urls[$len-1] == ""){
            $garbage = array_pop($pic_urls);
            $len--;
        }
        $prefix = config::get('hostname').'/';
        for($i=0; $i<$len; $i++){
            $pic_urls[$i] = $prefix.$pic_urls[$i];
        }
        $rows = [];
        $rows['goods_id'] = $goods_id;
        //$rows['pic_urls'] = $pic_urls;
        $rows['name'] = $ret[0]['name'];
        //$rows['len'] = $len;
        //dump($rows);

        $this->assign(["rows"=>$rows, "pic_urls"=>$pic_urls]);

        return $this->view->fetch('detail_pics');
    }

    public function delete_detail_pics($goods_id=null, $prestr=null)
    {
        if ($goods_id == null || !is_numeric($goods_id) || $prestr ==null){
            dump("数据为空");
            exit();
        }

        $goodsCtr = new Goods();
        $bucketManager = $goodsCtr->init_qiniu_bucketMgr();
        $bucket = config::get('qiniu_bucket');
        $prefix = $prestr.'/'.$goods_id;
        $marker = "";
        $limit = 10;
        $delimiter = "";
        list($ret, $err) = $bucketManager->listFiles($bucket, $prefix, $marker, $limit, $delimiter);
        if ($err !== null) {
            echo "\n====> list file err: \n";
            dump($err);
        } else {
            foreach($ret['items'] as $item){
                //print_r($item);
                $err = $bucketManager->delete($bucket, $item['key']);
                if ($err) {
                    dump($err);
                    exit();
                }else{
                    echo "删除数据成功：".$item['key'].PHP_EOL;
                }
            }        
        }
    }

    public function db_save_video_desc($dataList)
    {
        $detailsModel = new QuDetails();
        foreach($dataList as $rowList){
            $ret = $detailsModel
            ->where('goods_id', $rowList['goods_id'])
            ->field('video_urls')
            ->select();

            if ($ret[0]['video_urls'] == ''){
                continue;
            }

            $video_urls = json_decode($ret[0]['video_urls'], true);
            for ($i=0; $i < count($video_urls); $i++){
                $video_urls[$i]['desc'] = $rowList['video_desc'];
            }
            $json_data = json_encode($video_urls, JSON_UNESCAPED_UNICODE);

            $detailsModel->where('goods_id', $rowList['goods_id'])
                ->update(['video_urls' => $json_data]);
        }
        
    }

    public function dealVideoDescExcel()
    {
        $file = $this->request->file('file');
        if (empty($file)) {
            $this->msg = "未上传文件或超出服务器上传限制";
            return;
        }
        $fileInfo = $file->getInfo();
        if ($fileInfo['error']) {
            $this->msg = $file->getError();
            return;
        }

        $tmp_name = $fileInfo['tmp_name'];
        $dataList = [];
        if (file_exists($tmp_name)) {
            $objReader = PHPExcel_IOFactory::createReader('Excel5');
            $objPHPExcel = $objReader->load($tmp_name,$encode='utf-8');
            $sheet = $objPHPExcel->getActiveSheet();

            $dataKey = ['id', 'goods_id', 'video_desc', 'name'];
            foreach($sheet->getRowIterator() as $row){
                $rowIndex = $row->getRowIndex(); //从1开始
                if($rowIndex < 2){  //确定从哪一行开始读取
                    continue;
                }
                $rowList = [];
                $cell_id = 0;
                foreach($row->getCellIterator() as $cell)
                {
                    $data = $cell->getValue(); //获取cell中数据
                    if($cell_id < 3 && $cell_id > 0){
                        $rowList[$dataKey[$cell_id]] = $data;
                    }
                    $cell_id++;
                }
                $dataList[] = $rowList;
                
            }
            $this->db_save_video_desc($dataList);
            echo "上传视频描述成功";
        }
    }

    public function db_save_detail_desc($dataList)
    {
        $detailsModel = new QuDetails();
        foreach($dataList as $key=>$value){
            if (!is_numeric($key)) continue;

            $json_data = json_encode($value, JSON_UNESCAPED_UNICODE);
            $detailsModel->where('goods_id', $key)
                ->update(['desc' => $json_data]);
        }
    }

    public function dealFontDescTxt()
    {
        $file = $this->request->file('file');
        if (empty($file)) {
            $this->msg = "未上传文件或超出服务器上传限制";
            return;
        }
        $fileInfo = $file->getInfo();
        if ($fileInfo['error']) {
            $this->msg = $file->getError();
            return;
        }

        $tmp_name = $fileInfo['tmp_name'];
        $dataList = [];
        $fileArray = [];
        if (file_exists($tmp_name)) {
            $fp = fopen($tmp_name, "r") or die("Unable to open file!");
            while (!feof($fp)) {
                $fileArray[] = fgets($fp);
            }
            fclose($fp);
            $pattern = "/(#)([0-9]+)(#)/";
            $index = '0';
            foreach($fileArray as $row){
                if (preg_match($pattern, $row, $matches)){
                    //print_r($matches);
                    $index = $matches[2];
                    $dataList[$index] = [];
                }else{
                    $trimRow = trim($row);
                    if ($trimRow != ""){
                        $dataList[$index][] = $trimRow;
                    }
                }
            }
            //print_r($dataList);
            $this->db_save_detail_desc($dataList);
            echo "上传文案描述成功";
        }
    }    
    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个方法
     * 因此在当前控制器中可不用编写增删改查的代码,如果需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
    

}
