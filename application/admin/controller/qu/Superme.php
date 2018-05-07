<?php

namespace app\admin\controller\qu;

use app\common\controller\Backend;

use think\Controller;
use think\Request;
use app\admin\model\QuSuperme;
use PHPExcel_IOFactory;
use PHPExcel;

/**
 * 精选
 *
 * @icon fa fa-circle-o
 */
class Superme extends Backend
{
    
    /**
     * QuSuperme模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('QuSuperme');

    }

    public function add_superme()
    {
        if ($this->request->isAjax())
        {
            return $this->index();
        }
        return $this->view->fetch();
    }

    public function db_save_superme($rowList)
    {
        // print_r($rowList);
        $SupermeObj = new QuSuperme();
        $id = $rowList['id'];
        $ret = $SupermeObj
            ->where('id', $id)
            ->field('count(id) as cnt')
            ->select();
        
        if ($ret[0]['cnt'] >0){
            $SupermeObj->update($rowList);
        }else{
            $SupermeObj->data($rowList);
            $SupermeObj->isUpdate(false)->save();
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

        //$dataList = [];
        if (file_exists($tmp_name)) {
            $objReader = PHPExcel_IOFactory::createReader('Excel5');
            $objPHPExcel = $objReader->load($tmp_name,$encode='utf-8');
            $sheet = $objPHPExcel->getActiveSheet();

            $dataKey = ['id', 'goods_id', 'goods_name', 'category'];
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
                    if($cell_id < 2){
                        $rowList[$dataKey[$cell_id]] = $data;
                    }
                    $cell_id++;
                }
                $this->db_save_superme($rowList);

                //$dataList[] = $rowList;
            }
             echo "保存精选数据成功";
        }
    }
    
    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个方法
     * 因此在当前控制器中可不用编写增删改查的代码,如果需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
    

}
