<?php

namespace app\api\controller;

use app\common\controller\Api;
use think\Db;

class Top extends Api
{
    public function _initialize()
    {
        parent::_initialize();
    }

    public function TopList()
    {
        $category = input('category', 2);
        $page = input('page', 1);
        $limit = input('limit', 10);
        $first = ($page-1)*$limit;
        $sql = "select A.id as goods_id, name ,A.collection_num,price,A.home_url from qu_goods A , qu_top B
 where B.category=$category and B.goods_id = A.id and A.is_delete=1 and B.is_delete=1 order by B.weight desc limit $first,$limit";

        $data = Db::query($sql);
        for ($i = 0; $i < count($data); $i++) {
            $tempArray = json_decode($data[$i]['home_url'], true);
            if (count($tempArray) > 0) {
                $data[$i]['home_url'] = $tempArray[0];
            }
        }
        $result = ['code' => 200, 'msg' => 'success', 'data' => $data];
        return json($result);
    }
}