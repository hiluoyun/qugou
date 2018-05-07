<?php

namespace app\api\controller;

use app\common\controller\Api;
use think\Db;

class Collection extends Api
{
	public function _initialize()
    {
        parent::_initialize();
    }

    public function enjoyList()
    {
    	

        $sql = "select A.id as goods_id, name ,A.desc,A.category,share_num,price from qu_goods A , qu_collection B 
        where B.status=1 and B.goods_id = A.id ;";
        //echo $sql;

        $data = Db::query($sql);


    	$result = ['code'=>200,'msg'=>'success','data'=>$data];
    	return json($result);
    }
}