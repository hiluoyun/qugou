<?php

namespace app\api\controller;

use app\common\controller\Api;

class Index extends Api
{


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
