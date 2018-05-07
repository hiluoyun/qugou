<?php

namespace app\api\controller;

use app\common\controller\Api;
use think\Db;

class Recommend extends Api
{
    public function _initialize()
    {
        parent::_initialize();
    }

    public function weekList()
    {
        $week = input("week", 1);
        $data = $this->getWeekData($week);
        $result = ['code' => 200, 'msg' => 'success', 'data' => $data];
        return json($result);
    }

    private function getWeekData($week)
    {
        $nowUnixTime = strtotime(date('Y-m-d', strtotime('-' . ($week - 1) . " week 1 days")));
        $preDayUnixTime = strtotime(date('Y-m-d', strtotime('-' . $week . " week 1 days")));
        $sql = "select A.id as goods_id, name,A.desc goods_desc ,B.desc as recommend_desc,A.home_url from qu_goods A,qu_recommend B where A.id 
    	=B.goods_id and  B.createtime > $preDayUnixTime and B.createtime < $nowUnixTime and A.is_delete=1 and B.is_delete=1 order by B.weight desc;";
        $data = Db::query($sql);
        $label = '';
        if ($week == 1) {
            $label = '本周';
        } else if ($week == 2) {
            $label = '上周';
        } else {
            if (!empty($data)) {
                $label = date('Y-m-d', $data[0]['createtime']);
            }
        }
        for ($i = 0; $i < count($data); $i++) {
            $data[$i]['goods_desc'] = $data[$i]['recommend_desc'];
            $tempArray = json_decode($data[$i]['home_url'], true);
            if (count($tempArray) > 0) {
                $data[$i]['home_url'] = $tempArray[0];
            }
        }
        return ['label' => $label, 'data' => $data];
    }
}