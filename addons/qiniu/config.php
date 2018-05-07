<?php

return array (
  'app_key' => 
  array (
    'name' => 'app_key',
    'title' => 'app_key',
    'type' => 'string',
    'content' => 
    array (
    ),
    'value' => '2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'secret_key' => 
  array (
    'name' => 'secret_key',
    'title' => 'secret_key',
    'type' => 'string',
    'content' => 
    array (
    ),
    'value' => '0YjDdiDUKV0PxAWoYVFOgXhfIFjNNXzXlocqKoHg',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'bucket' => 
  array (
    'name' => 'bucket',
    'title' => 'bucket',
    'type' => 'string',
    'content' => 
    array (
    ),
    'value' => 'qu-gou',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'uploadurl' => 
  array (
    'name' => 'uploadurl',
    'title' => '上传接口地址',
    'type' => 'select',
    'content' => 
    array (
      'http://upload.qiniu.com' => '华东 http://upload.qiniu.com',
      'http://upload-z1.qiniu.com' => '华北 http://upload-z1.qiniu.com',
      'http://upload-z2.qiniu.com' => '华南 http://upload-z2.qiniu.com',
      'http://upload-na0.qiniu.com' => '北美 http://upload-na0.qiniu.com',
    ),
    'value' => 'http://upload-z2.qiniu.com',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'cdnurl' => 
  array (
    'name' => 'cdnurl',
    'title' => 'CDN地址',
    'type' => 'string',
    'content' => 
    array (
    ),
    'value' => 'http://qu-gou.bkt.clouddn.com',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'notifyenabled' => 
  array (
    'name' => 'notifyenabled',
    'title' => '启用服务端回调',
    'type' => 'bool',
    'content' => 
    array (
    ),
    'value' => '0',
    'rule' => '',
    'msg' => '',
    'tip' => '本地开发请禁用服务端回调',
    'ok' => '',
    'extend' => '',
  ),
  'notifyurl' => 
  array (
    'name' => 'notifyurl',
    'title' => '回调通知地址',
    'type' => 'string',
    'content' => 
    array (
    ),
    'value' => 'http://yangqihua.com/qugou/public/index.php/addons/qiniu/index/notify',
    'rule' => '',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'savekey' => 
  array (
    'name' => 'savekey',
    'title' => '保存文件名',
    'type' => 'string',
    'content' => 
    array (
    ),
    'value' => '/uploads/$(year)$(mon)$(day)/$(etag)$(ext)',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'expire' => 
  array (
    'name' => 'expire',
    'title' => '上传有效时长',
    'type' => 'string',
    'content' => 
    array (
    ),
    'value' => '600',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'maxsize' => 
  array (
    'name' => 'maxsize',
    'title' => '最大可上传',
    'type' => 'string',
    'content' => 
    array (
    ),
    'value' => '10M',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'mimetype' => 
  array (
    'name' => 'mimetype',
    'title' => '可上传后缀格式',
    'type' => 'string',
    'content' => 
    array (
    ),
    'value' => '*',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
  'multiple' => 
  array (
    'name' => 'multiple',
    'title' => '多文件上传',
    'type' => 'bool',
    'content' => 
    array (
    ),
    'value' => '1',
    'rule' => 'required',
    'msg' => '',
    'tip' => '',
    'ok' => '',
    'extend' => '',
  ),
);