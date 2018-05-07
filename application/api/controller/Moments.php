<?php

namespace app\api\controller;

use app\common\controller\Api;
use app\admin\model\QuMoments;
use app\admin\model\QuUser;
use think\Db;

class Moments extends Api
{
	public function _initialize()
    {
        parent::_initialize();
    }

    public function publish_moments()
    {
    	$user_id = input('user_id', null);
    	$content = input('content', null);
    	$img_urls = input('img_urls', null);

    	$momentsModel = new QuMoments();
    	$res = $momentsModel
    		->data(['user_id' => $user_id, 'content' => $content, 'img_urls' => $img_urls])
    		->isUpdate(false)->save();
    	if ($res <= 0){
    		dump("insert moments fail!");
    	}
    }

    public function momentsList($page, $limit)
    {
    	if (!is_numeric($page) || !is_numeric($limit)){
    		dump("page or limit error!");
    		exit(1);
    	}
    	$first = ($page-1)*$limit;
    	
    	$sql = 'SELECT A.id, A.user_id, B.name as user_name, B.img_url as user_avatar, A.createtime as publish_time, A.content, A.img_urls, A.like_num, A.comment_num  from qu_moments A, qu_user B where '.
    		"A.user_id = B.id and A.is_delete = 1 and B.is_delete = 1 order by A.createtime limit $first,$limit;";
    	$dataList = Db::query($sql);
    	// var_dump(!$dataList);
    	$sql_user  = 'SELECT id from qu_moments_like where moments_id=:m_id and user_id=:u_id;';

    	for($i=0; $i < count($dataList); $i++)
    	{
    		$m_id = $dataList[$i]['id'];
    		$u_id = $dataList[$i]['user_id'];
    		$dataList[$i]['img_urls'] = json_decode($dataList[$i]['img_urls'], true);
    		$is_like = Db::query($sql_user, ['m_id'=>$m_id, 'u_id'=>$u_id]);

    		if(count($is_like) > 0){
    			$dataList[$i]['is_like'] = 1;
    		}else{
    			$dataList[$i]['is_like'] = 0;
    		}
    	}

    	$result = ['code' => 200, 'msg' => 'success', 'data' => $dataList];
        return json($result);
    }

    public function momentsComment($page, $limit)
    {
    	$m_id = input('m_id', null);
    	if (!is_numeric($page) || !is_numeric($limit) || !is_numeric($m_id)){
    		dump("page or limit error!");
    		exit(1);
    	}
    	$first = ($page-1) * $limit;
    	$sql = "SELECT from_user_id, to_user_id, content from qu_moments_comment where"
    		." moments_id =$m_id order by createtime desc limit $first, $limit ;";
    	$list = Db::query($sql);
    	$data = [];
    	
    	foreach($list as $row){
    		$rowdata = [];
    		$rowdata['content'] = $row['content'];
    		$rowdata['from_user_name'] = $this->query_user_name($row['from_user_id']);
    		if ($row['to_user_id'] == null){
    			$rowdata['to_user_name'] = null;
    		}else{
    			$rowdata['to_user_name'] = $this->query_user_name($row['to_user_id']);
    		}
    		$data[] = $rowdata;
    	}
    	

    	$result = ['code' => 200, 'msg' => 'success', 'data' => $data];
        return json($result);
    }

    public function query_user_name($user_id)
    {
    	$userModel = new QuUser();
    	$list = $userModel
    		->where(['id'=>$user_id])
    		->field('name')
    		->select();
    	if (!$list){
    		return null;
    	}
    	return $list[0]['name'];
    }                                              

}