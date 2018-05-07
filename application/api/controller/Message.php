<?php

namespace app\api\controller;

use app\common\controller\Api;
use app\api\controller\Moments;
use app\admin\model\QuMoments;
use app\admin\model\QuUser;
use app\admin\model\QuMomentsComment;
use think\Db;

class Message extends Api
{
	public function _initialize()
    {
        parent::_initialize();
    }

    public function hasNewMessage($user_id)
    {
    	$commentModel = new QuMomentsComment();
    	$list = $commentModel
    		->where(['to_user_id'=>$user_id, 'to_user_is_read'=>0])
    		->field('id')
    		->select();
    	$data = [];
    	if(count($list) > 0){
    		$data['is_read'] = 0;
    	}else{
    		$data['is_read'] = 1;
    	}

    	$result = ['code' => 200, 'msg' => 'success', 'data' => $data];
        return json($result);
    }

    public function likeMyMoments($user_id)
    {
    	//username time
    	$momentsModel = new QuMoments();
    	$list = $momentsModel
    		->where('user_id', $user_id)
    		->field('id')
    		->order('createtime desc')
    		->select();
    	$sql = 'SELECT user_id, createtime from qu_moments_like where moments_id=:m_id order by createtime desc';

    	$data = [];
    	foreach($list as $row){
    		$rowdata = [];
    		$rowdata['moments_id'] = $row['id'];
    		$rowdata['like'] = [];
    		$u_list = Db::query($sql, ['m_id'=>$row['id']]);
    		foreach($u_list as $u_row){
    			$momentsObj = new Moments();
    			$u_name = $momentsObj->query_user_name($u_row['user_id']);
    			$rowdata['like'][] = ['user_name'=>$u_name, 'createtime'=>$u_row['createtime']];
    		}
    		$data[] = $rowdata;
    	}

    	$result = ['code' => 200, 'msg' => 'success', 'data' => $data];
        return json($result);
    }

    public function replyComments($user_id)
    {
    	$sql = 'SELECT id, p_id, moments_id, from_user_id, content, createtime from qu_moments_comment where '
    		.'to_user_id =:u_id order by createtime desc;';
    	$list = Db::query($sql, ['u_id'=>$user_id]);

    	$p_sql = 'SELECT moments_id, from_user_id, to_user_id, content from qu_moments_comment where id=:mc_id;';

    	$data = [];
    	foreach( $list as $row){
    		$rowdata = [];
    		$momentsObj = new Moments();
    		$from_user_name = $momentsObj->query_user_name($row['from_user_id']);
    		$rowdata['from_user_name'] = $from_user_name;
    		$rowdata['content'] = $row['content'];
    		$rowdata['createtime'] = $row['createtime'];
    		$rowdata['parent'] = [];
    		if($row['p_id']){
    			$p_list = Db::query($p_sql, ['mc_id'=>$row['p_id']]);
    			$rowdata['parent']['content'] = $p_list[0]['content'];
    			if ($p_list[0]['to_user_id']){
    				$to_user_name = $momentsObj->query_user_name($p_list[0]['to_user_id']);
    				$rowdata['parent']['to_user_name'] = $to_user_name;
    			}else{
    				$rowdata['parent']['to_user_name'] = null;
    			}	
    		}
    		$data[] = $rowdata;
    	}

    	$result = ['code' => 200, 'msg' => 'success', 'data' => $data];
        return json($result);
    }
}