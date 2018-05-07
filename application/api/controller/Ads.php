<?php

namespace app\api\controller;

use app\common\controller\Api;
use app\admin\model\QuAd;

class Ads extends Api
{
	public function _initialize()
    {
        parent::_initialize();
    }

    public function homeAds()
    {
    	$adsModel = new QuAd();
    	$data = $adsModel
            ->where("is_delete",1)
    		->field('goods_id, img_url,desc')
            ->order('weight','desc')
    		->select();

    	$result = ['code'=>200,'msg'=>'success','data'=>$data];
    	return json($result);
    }
}