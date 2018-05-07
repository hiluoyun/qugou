<?php

namespace app\admin\model;

use think\Model;

class QuMomentsComment extends Model
{
    // 表名
    protected $table = 'qu_moments_comment';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    
    // 追加属性
    protected $append = [

    ];
    

    







}
