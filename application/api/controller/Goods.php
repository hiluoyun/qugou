<?php

namespace app\api\controller;

use app\admin\model\QuGoods as QuGoodsModel;
use app\admin\model\QuDetails;
use app\common\controller\Api;
use think\Db;

class Goods extends Api
{


    public function _initialize()
    {
        parent::_initialize();
    }

    public function homeList()
    {
        $category = input('category', 1);
        $page = input('page', 1);
        $limit = input('limit', 10);
        $first = ($page-1)*$limit;
        if($category==0){
            $list = $this->superMe($first,$limit);
        }else{
            $goodsModel = new QuGoodsModel();
            $list = $goodsModel
                ->where(["status" => 1, "category" => $category, "is_delete" => 1])
                ->field('id, name, desc, home_url, category, collection_num, price')
                ->limit($first, $limit)
                ->order('weight desc')
                ->order('id desc')
                ->select();
        }
        for ($i = 0; $i < count($list); $i++) {
            $tempArray = json_decode($list[$i]['home_url'], true);
            if (count($tempArray) > 0) {
                $list[$i]['home_url'] = $tempArray[0];
            }
        }
        $result = ['code' => 200, 'msg' => 'success', 'data' => $list];
        return json($result);
    }

    public function superMe($first,$limit){
        $sql = "SELECT A.id, name, A.desc,A.home_url, A.category,collection_num,price from qu_goods A, qu_superme B where" .
            " A.id=B.goods_id and A.is_delete=1 and B.is_delete=1 order by B.weight limit $first,$limit;";
        $data = Db::query($sql);
        return $data;
    }

    public function details()
    {
        $goods_id = input('goods_id', 0);
        if (!$goods_id) {
            return json(['code' => 500, 'msg' => '非法的goods_id']);
        }
        $sql = 'SELECT A.id as goods_id, name, A.desc as goods_desc, A.category ,collection_num,share_num,price,B.desc as detail_desc,tb_link,jd_link,img_urls,video_urls from qu_goods A, qu_details B where' .
            ' A.id=B.goods_id and A.id=:g_id and A.is_delete=1 limit 1;';
        $data = Db::query($sql, ['g_id' => $goods_id]);
        $details = '';
        if (count($data) == 1) {
            $details = $data[0];
            if ($details['tb_link']) {
                $links = explode(';', $details['tb_link']);
                if(count($links)>0){
                    $details['link'] = $links[0];
                }
            }else if (!$details['tb_link']) {
                $details['link'] = $details['jd_link'];
            }
            $details['img_urls'] = json_decode($details['img_urls'], true);
            $details['video_urls'] = json_decode($details['video_urls'], true);
            $details['detail_desc_array'] = json_decode($details['detail_desc'], true);

        }
        $result = ['code' => 200, 'msg' => 'success', 'data' => $details];
        return json($result);
    }
}
