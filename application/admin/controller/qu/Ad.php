<?php

namespace app\admin\controller\qu;

use app\common\controller\Backend;
use app\admin\controller\qu\Goods;
use think\Controller;
use think\Request;
use think\Config;
use app\admin\model\QuAd;
use app\admin\model\QuGoods;
use PHPExcel_IOFactory;
use PHPExcel;
/**
 * 广告
 *
 * @icon fa fa-circle-o
 */
class Ad extends Backend
{
    
    /**
     * QuAd模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('QuAd');

    }

    public function add_ads()
    {
        if ($this->request->isAjax())
        {
            return $this->index();
        }
        return $this->view->fetch();
    }

    public function view_ad_pics($goods_id=null)
    {
        $ret = $this->model
            ->where('goods_id', $goods_id)
            ->field('img_url')
            ->select();
        if (!$ret){
            dump($goods_id);
            exit();
        }
        $prefix = config::get('hostname');
        $rows = [];
        $rows['goods_id'] = $goods_id;
        $rows['img_url'] = $prefix.'/'.$ret[0]['img_url'];

        $goodsModel = new QuGoods();
        $goodsRet = $goodsModel
            ->where('id', $goods_id)
            ->field('name')
            ->select();
        $rows['name'] = $goodsRet[0]['name'];
        $this->assign('rows', $rows);
        return $this->view->fetch('ad_pics');
    }

    public function delete_ad_pics($goods_id=null, $prestr=null)
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
                    $this->db_del_ad($goods_id);
                    echo "删除数据成功：".$item['key'].PHP_EOL;
                }
            }        
        }
    }

    public function db_del_ad($goods_id)
    {
        $ret = $this->model
            ->where('goods_id', $goods_id)
            ->delete();
        if (!$ret){
            dump("删除数据错误".$goods_id);
            exit();
        }
    }

    public function db_save_ad_desc($dataList)
    {
        // print_r($dataList);
        $AdObj = new QuAd();

        foreach($dataList as $row){
            $AdObj->where('goods_id', intval($row['goods_id']))
                 ->update(['desc' => $row['desc']]);
        }
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

        $dataList = [];
        if (file_exists($tmp_name)) {
            $objReader = PHPExcel_IOFactory::createReader('Excel5');
            $objPHPExcel = $objReader->load($tmp_name,$encode='utf-8');
            $sheet = $objPHPExcel->getActiveSheet();

            $dataKey = ['id', 'goods_id', 'desc', 'reserved'];
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
                    if($cell_id < 3){
                        $rowList[$dataKey[$cell_id]] = $data;
                    }
                    $cell_id++;
                }
                $dataList[] = $rowList;
            }

            $this->db_save_ad_desc($dataList);
             echo "保存广告描述数据成功";
        }
    }
    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个方法
     * 因此在当前控制器中可不用编写增删改查的代码,如果需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
    

}
