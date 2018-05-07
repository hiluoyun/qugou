<?php

namespace app\admin\controller\qu;

// require 'vendor/autoload.php';
use app\common\controller\Backend;

use think\Controller;
use think\Request;
use think\Config;
//use think\Image;
use app\admin\model\QuGoods;
use app\admin\model\QuDetails;
use app\admin\model\QuAd;
use PHPExcel_IOFactory;
use PHPExcel;
use \Chumper\Zipper\Zipper;
use Qiniu\Auth;
use Qiniu\Storage\BucketManager;
use QL\QueryList;


/**
 * 商品
 *
 * @icon fa fa-circle-o
 */
class Goods extends Backend
{

    /**
     * QuGoods模型对象
     */
    private $detailPicDir = "temp/detail_pics/";
    private $homePicDir = "temp/home_pics/";

    private $unzipRootDir = "temp/unzip/";
    private $detailUploadDir ="temp/uploads/";
    private $homeUploadDir ="temp/home_uploads/";
    private $adUploadDir ="temp/ad_uploads/";
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('QuGoods');

    }

    public function test()
    {

        $this->msg = "hello world";
        return json(['code'=>200]);
        //$this->error("未上传文件或超出服务器上传限制");
        echo "test".PHP_EOL;
/*      $detailsModel = new QuDetails();
        $data = ['desc'=>'', 'url'=>'$url'];
        $json_data = json_encode($data, JSON_UNESCAPED_UNICODE);
        $detailsModel->where('goods_id', '1')
        ->update(['video_urls' => $json_data]);*/

        //var_dump($ret[0]['id']);
        /*$list = self::list_dir('temp/home_pics/');
        var_dump($list);
        $a =[];*/

        //$a = scandir('temp/home_pics/1/');
        //var_dump($a);
        //$this->image2webp('temp/detail_pics/5/','9f3011d236e90381ed8722ea42e458a7.webp',100);
        //$image = \think\Image::open('temp/pictrues/1/9541c6ddb80275b4f72e4b45a7904189.jpg');
        //print_r($image);
        
        /*if(!file_exists('temp/uploads'))
        {
            mkdir('temp/uploads');
        }*/
        //$files = glob('*.php');
        //print_r($files);
        //$objZipper = new Zipper();
        //echo getcwd() . "<br/>"; 
        //$data = $objZipper->make('test/test.zip')->listFiles('/\.php$/i'); 
        //$dataDetails = $objZipper->getFileContent($data[0]);
        //echo $dataDetails;
        //$objZipper->make('test/test.zip')->extractTo('test', ['haha'], Zipper::WHITELIST);
        //$objZipper->make('test.zip')->folder('haha')->extractTo('uploads/')->close();
    }

    public function update_pic($id = NULL)
    {
        if ($this->request->isAjax())
        {
            return $this->index();
        }
        
        $ret = $this->model->get($id);
        if (!$ret){
            $this->error(__('No Results were found'));
        }
        $home_url = json_decode($ret->home_url, true);
        $hostname = config::get('hostname');
        $rows = [];
        
        $rows['id'] = $ret->id;
        $rows['name'] = $ret->name;
        
        
        $rows['home_url'] = $hostname.'/'.$home_url[0]['url'];
        
        $this->assign('rows', $rows);
        return $this->view->fetch();
    }

    public function init_qiniu_bucketMgr()
    {
        $accessKey = config::get('qiniu_accessKey');
        $secretKey = config::get('qiniu_secretKey');
        //$bucket = config::get('qiniu_bucket');
        $auth = new Auth($accessKey, $secretKey);
        $config = new \Qiniu\config();
        $bucketManager = new BucketManager($auth, $config);
        return $bucketManager;
    }

    public function delete_home_pic($id = NULL, $prestr = "")
    {
        if ($id == null|| !is_numeric($id) || $prestr == ""){
            echo "数据为空";
            exit();
        }

        $bucket = config::get('qiniu_bucket');
        $bucketManager = $this->init_qiniu_bucketMgr();
        $prefix = $prestr.'/'.$id;
        
        // 上次列举返回的位置标记，作为本次列举的起点信息。
        $marker = '';
        // 本次列举的条目数
        $limit = 10;
        $delimiter = '';
        // 列举文件
        list($ret, $err) = $bucketManager->listFiles($bucket, $prefix, $marker, $limit, $delimiter);
        if ($err !== null) {
            echo "\n====> list file err: \n";
            var_dump($err);
        } else {
            /*if (array_key_exists('marker', $ret)) {
                echo "Marker:" . $ret["marker"] . "\n";
            }*/
            foreach($ret['items'] as $item){
                //print_r($item);
                $err = $bucketManager->delete($bucket, $item['key']);
                if ($err) {
                    print_r($err);
                    exit();
                }else{
                    echo "删除数据成功：".$item['key'].PHP_EOL;
                }
            }        
        }
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

    public function download_pic($content, $save_path, $attr_val )
    {
        QueryList::run('DImage',[
        'content' => $content,
        'www_root' => getcwd(),
        'base_url' => '',
        'attr' => [$attr_val],
        'image_path' => $save_path,
        'callback' => function($obj) use ($save_path){
            $file_list = $this->list_dir($save_path);
            if (!empty($file_list)){
                foreach($file_list as $file){
                    $type = pathinfo($file ,PATHINFO_EXTENSION);
                    $filename = null;
                    if ($type == 'webp'){
                        $filename = $this->image2webp($save_path, $file, 100);
                    }
                    if(!$filename){
                        $filename = $file;
                    }
                    $this->validate_img($save_path, $filename);
                }
            }
        }
        ]);
    }

    public function spider_pic($dataList, $pic_path)
    {
        // print_r($dataList);
        if (!file_exists($pic_path)){
            mkdir($pic_path);
        }
        $src_cont = "<img src='hiluo'>";
        foreach($dataList as $row)
        {
            if($row['id'] == null || $row['url'] == null)
                continue;
            $image_path = $pic_path.$row['id']."/";
            if (!file_exists($image_path)){
                mkdir($image_path);
            }

            $pattern = "/<img.*src=.*>/i";
            $content = "";
            if (preg_match($pattern, $row['url'], $matchs))
            {
                if (strpos($row['url'], "http"))
                {
                    $content = $row['url'];
                }else
                {
                    $content = str_replace('//', 'https://', $row['url']);
                }
                
            }else
            {
                $content = str_replace('hiluo', $row['url'],$src_cont);
            }
            
            $attr_val = 'src';
            $this->download_pic($content, $image_path, $attr_val);
        }

    }

    public function image2webp($fileDir, $filename, $quality)
    {
        //echo $fileDir.$filename.PHP_EOL;
        $path_arr = explode(".", $filename);
        $image = imagecreatefromwebp($fileDir.$filename);
        // 以 100% 的质量转换成 jpeg 格式
        $newfname = $path_arr[0].'.jpg';
        imagejpeg($image, $fileDir.$newfname, $quality);
        imagedestroy($image);
        if(!unlink($fileDir.$filename)){
            $this->error($fileDir.$filename.'删除文件失败');
        }
        return $newfname;
    }

    public function validate_img($fileDir, $filename)
    {
        //echo $fileDir.$filename.PHP_EOL;
        $image = \think\Image::open($fileDir.$filename);

        if ($image->width() != $image->height())
        {
            $this->img_crop2square($image, $fileDir, $filename);
            return false;
        }
        return true;
    }

    public function img_crop2square($image, $fileDir, $filename)
    {
        $width = $image->width();
        $height = $image->height();
        $offset = 0;
        $cropxy = [];
        $base_len = min($width, $height);

        if ($width > $height)
        {
            $cropxy[1] = 0;
            $offset = $width - $height;
            $cropxy[0] = floor($offset/2);
        }else
        {
            $cropxy[0] = 0;
            $offset = $height - $width;
            $cropxy[1] = floor($offset/2);
        }
        $image->crop($base_len, $base_len,$cropxy[0], $cropxy[1])->save($fileDir.$filename);
    }
    
    public function upload_file()
    {
        if ($this->request->isAjax())
        {
            return $this->index();
        }
        return $this->view->fetch();
    }




    static public function save_details_pics($pic_urls)
    {
        $detailsModel = new QuDetails();
        //print_r($pic_urls);
        foreach($pic_urls as $key=>$pic_url)
        {
            
            $pic_arr = explode(";", $pic_url);
            $data_pic = [];
            foreach ($pic_arr as $pic)
            {
                $data_pic[] = ['desc'=>'', 'url'=>$pic];
            }
            $data_pic_str = json_encode($data_pic);
            $detailsModel->save(['img_urls' => $data_pic_str],['id' => intval($key)] );
        }
    }

    static public function save_goods_home_pic($pic_urls)
    {
        $goodsModel = new QuGoods();
        foreach($pic_urls as $key=>$pic_url)
        {
            $pic_arr = explode(";", $pic_url);
            $data_pic = [];
            foreach ($pic_arr as $pic)
            {
                $data_pic[] = ['desc'=>'', 'url'=>$pic];
            }
            $data_pic_str = json_encode($data_pic, JSON_UNESCAPED_UNICODE);
            $goodsModel->save(['home_url'=> $data_pic_str ], ['id'=>intval($key)] );
        }
    }

    static public function save_goods_ad_pic($pic_urls)
    {
        $adsModel = new QuAd();
        //print_r($pic_urls);
        foreach ($pic_urls as $key => $value) {
            $adsModel->data(['id'=>'','goods_id'=>$key, 'img_url'=>$value]);
            $adsModel->isUpdate(false)->save();
        }

    }

    static public function moveFile($srcRoot, $dest, $dirList)
    {
        $pic_urls = [];
        if (!file_exists($dest)){
            mkdir($dest);
        }
        foreach($dirList as $dirPath)
        {
            list($dir, $goods_id, $srcFilename) = explode ("/", $dirPath, 3);
            $suffix = explode(".", $srcFilename,2);
            $newName = sha1_file($srcRoot.$dirPath).".".$suffix[1];
            //echo $newName."<br>";
            
            if (!file_exists($dest.$goods_id)){
                mkdir($dest.$goods_id);
            }
            $newFilePath = $dest.$goods_id."/".$newName;
            $ret = rename($srcRoot.$dirPath, $newFilePath);
            if (!$ret)
                trace('移动文件失败', 'error');

            if (array_key_exists($goods_id, $pic_urls))
            {
                $pic_urls[$goods_id] = $pic_urls[$goods_id].";".$newFilePath;
            }else
            {
                $pic_urls[$goods_id] = $newFilePath;
            }
        }
        
        return $pic_urls;
             
    }

    static public function unzip($filePath, $dest)
    {
        $objZipper = new Zipper();
        $dirList = $objZipper->make($filePath)->listFiles('/[0-9]+\/.*\.[(jpg)|(png)|(jpeg)|(bmp)|(webp)|(gif)]/i');
        
        $objZipper->make($filePath)->extractTo($dest, $dirList, Zipper::WHITELIST);
        return $dirList;
    }

    /*
    保存新增数据
     */
    public  function saveSrcData($goodsList, $detailsList)
    {
        $goodsModel = new QuGoods();
        //print_r($list);
        $goodsModel->saveAll($goodsList, false);

        $detailsModel = new QuDetails();
        //print_r($detailsList);
        $detailsModel->saveAll($detailsList, false);
    }



    static public function checkData($id)
    {
        $goodsModel = new QuGoods;
        $maxid = $goodsModel
            ->field('max(id) as id')
            ->select();
        //echo $maxid[0]['id'];
        $ret = false;
        if ($maxid[0]['id'] +1 === $id)
        {
            $ret = true;
        }
        return $ret;
    }

    public function dealUploadExcel()
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

        if (file_exists($tmp_name)) {
            $objReader = PHPExcel_IOFactory::createReader('Excel5');
            $objPHPExcel = $objReader->load($tmp_name,$encode='utf-8');
            $sheet = $objPHPExcel->getActiveSheet();
            //$highestRow = $sheet->getHighestRow(); // 取得总行数
            //$highestColumn = $sheet->getHighestColumn(); // 取得总列数
            
            //excel
            //id name desc price category
            //excel
            $dataKey=['id','name','desc','price','category', 'tb_link','video_urls', 'desc', 'reserved'];
            $dataGoodsList = [];
            $dataDetailsList = [];
            
            
            foreach ($sheet->getRowIterator()  as $row) {
                
                if($row->getRowIndex()< 2)  //确定从哪一行开始读取
                 {
                     continue;
                 }
                 $dataGoodsRow = [];
                 $dataDetailsRow = [];
                 $index = 0;
                 foreach($row->getCellIterator() as $cell)  //逐列读取
                 {

                     $data = $cell->getValue(); //获取cell中数据
                     if ($dataKey[$index] == 'reserved')
                        break;
                     if ($index < 5)
                     {
                        $dataGoodsRow[$dataKey[$index]] = $data;
                        if ($index == 0)
                        {
                            $dataDetailsRow['id'] = '';
                            $dataDetailsRow['goods_id'] = $data;
                        }
                     }else
                     {

                        $dataDetailsRow[$dataKey[$index]] = $data;
                        if ($index == 7 && $dataDetailsRow['desc'] == null)
                        {
                            $dataDetailsRow['desc'] = "null";
                        }
                     }
                     
                     $index = $index+1;
                 }
                 
                 $dataGoodsList[] = $dataGoodsRow;
                 $dataDetailsList[] = $dataDetailsRow;
            }
            //print_r($dataGoodsList);
            //print_r($dataDetailsList);
            //exit();
            $this->saveSrcData($dataGoodsList, $dataDetailsList);
            echo "初始数据保存成功！";
        }
    }

    public function dealUploadPicExcel()
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
        if (file_exists($tmp_name)) {
            $objReader = PHPExcel_IOFactory::createReader('Excel5');
            $objPHPExcel = $objReader->load($tmp_name,$encode='utf-8');
            $sheet = $objPHPExcel->getActiveSheet();

            $dataKey=['id','url','pre','pre'];
            $dataList = [];
            
            $homeDataList = [];
            
            $is_exist = [];
            $is_home = false;
            foreach ($sheet->getRowIterator()  as $row) {
                
                if($row->getRowIndex()< 2)  //确定从哪一行开始读取
                 {
                     continue;
                 }
                 $dataRow = [];
                 $home_url_arr = [];
                 $index = 0;
                 foreach($row->getCellIterator() as $cell)  //逐列读取
                 {
                    $data = $cell->getValue(); //获取cell中数据
                    $dataRow[$dataKey[$index]] = $data;

                    if ($index == 0)
                    {
                        if (!array_key_exists(intval($data), $is_exist))
                         {
                            $is_exist[intval($data)] = 0;
                            $home_url_arr[$dataKey[$index]] = $data;
                            $is_home = true;
                         }
                    }
                     
                     if ($index == 1 && $is_home)
                    {
                        $is_home = false;
                        $home_url_arr[$dataKey[$index]] = $data;
                        $homeDataList[] = $home_url_arr;
                    }
                     $index = $index+1;
                 }
                 $dataList[] = $dataRow;
            }
            if (!empty($homeDataList)){
                //print_r($homeDataList);
                $this->spider_pic($homeDataList, $this->homePicDir);
                echo "商品首页图片下载完成！";
            }
            if (!empty($dataList)){
                $this->spider_pic($dataList, $this->detailPicDir);
                echo "商品详情图片下载完成！";
            }
            
        }
    }

    public function dealUploadZip()
    {

        $file = $this->request->file('file');
        //var_dump($file);
        // exit();
        if (empty($file)) {
            $this->msg = "未上传文件或超出服务器上传限制";
            return;
        }

        $fileInfo = $file->getInfo();
        // print_r($fileInfo);
        if ($fileInfo['error']) {
            $this->msg = $file->getError();
            return;
        }

        $tmp_name = $fileInfo['tmp_name'];
        if (file_exists($tmp_name)) {
            $dirList = Goods::unzip($tmp_name, $this->unzipRootDir);
            //print_r($dirList);
            $pic_urls = Goods::moveFile($this->unzipRootDir, $this->detailUploadDir, $dirList);
            Goods::save_details_pics($pic_urls);
        }

    }

    public function dealUploadHomePic()
    {
        $file = $this->request->file('file');
        // var_dump($file);
        // exit();
        if (empty($file)) {
            $this->msg = "未上传文件或超出服务器上传限制";
            return;
        }

        $fileInfo = $file->getInfo();
        // print_r($fileInfo);
        if ($fileInfo['error']) {
            $this->msg = $file->getError();
            return;
        }

        $tmp_name = $fileInfo['tmp_name'];
        if (file_exists($tmp_name)) {
            $dirList = Goods::unzip($tmp_name, $this->unzipRootDir);
            //print_r($dirList);
            $pic_urls = Goods::moveFile($this->unzipRootDir, $this->homeUploadDir, $dirList);
            Goods::save_goods_home_pic($pic_urls);
        }        
    }

    public function dealUploadAdPic()
    {
        $file = $this->request->file('file');
        // var_dump($file);
        // exit();
        if (empty($file)) {
            $this->msg = "未上传文件或超出服务器上传限制";
            return;
        }

        $fileInfo = $file->getInfo();
        // print_r($fileInfo);
        if ($fileInfo['error']) {
            $this->msg = $file->getError();
            return;
        }

        $tmp_name = $fileInfo['tmp_name'];
        if (file_exists($tmp_name)) {
            $dirList = Goods::unzip($tmp_name, $this->unzipRootDir);
            //print_r($dirList);
            $pic_urls = Goods::moveFile($this->unzipRootDir, $this->adUploadDir, $dirList);
            Goods::save_goods_ad_pic($pic_urls);
        }        
    }
/**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个方法
     * 因此在当前控制器中可不用编写增删改查的代码,如果需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
    

}
