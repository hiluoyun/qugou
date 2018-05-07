>* rootUrl为: http://ip/qugou/public/index.php/api/
>* 所有模块遵从以下规范：
  - 1. api 规范基本格式(有code、msg、data三个基本字段)
    - 成功code=200、msg='success'、data=相关数据
    - 失败code=500、msg='error'、data=null
      ```
        {
            "code": 200,
            "msg": "success",
            "data": 数据
        }
      ```
  ## 例子
  - 1.获取对象列表 ：
    - GET /controller/method?offset=0&limit=10
    - success response for json
      ```
        {
            "code": 200,
            "msg": "success",
            "data": [
                {
                    "id": 3,
                    "name": "商品3",
                    "desc": "11",
                    "home_url": "xxx.jpg",
                    "category": 1,
                    "weight": 10,
                    "share_num": 1,
                    "buy_num": 1,
                    "browse_num": 1,
                    "price": 1,
                    "status": 1,
                    "collection_num": 1,
                    "createtime": null,
                    "updatetime": null,
                    "create_user": ""
                },
                {
                    "id": 2,
                    "name": "商品2",
                    "desc": "11",
                    "home_url": "xxx.jpg",
                    "category": 1,
                    "weight": 10,
                    "share_num": 1,
                    "buy_num": 1,
                    "browse_num": 1,
                    "price": 1,
                    "status": 1,
                    "collection_num": 1,
                    "createtime": null,
                    "updatetime": null,
                    "create_user": ""
                },
            ]
        }
      ```

#moments#
id    //动态id
user_id   //用户id，发表者，获取头像，用户名等信息
content //文本
img_urls   // img.xxx.jpg;img.xxee.jpg
like_num //点赞数
comment_num 

#moments_comment#
id //自增id
p_id  
moments_id
from_user_id //评论者
to_user_id //回复谁，单纯评论，该字段为空
content
to_user_is_read //

#moments_like#
id
moments_id
user_id
