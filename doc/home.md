>* rootUrl为: http://ip/qugou/public/index.php/api

##example
```
{
	"code": 200,
	"msg": "success",
	"data": null
}
```

##获取首页图片
- GET /ads/homeads
- success  response for json

```
{
	"code": 200,
	"msg": "success",
	"data":[
	{
		"goods_id":1,
		"img_url":"xxxx"
	},
	{
		"goods_id":2,
		"img_url":"xxxx"
	},
	{
		"goods_id":3,
		"img_url":"xxxx"
	}
	]
}
```

##分页获取商品
- GET /goods/homelist
- param page 从0开始，一页十张图片
- param category //1代表精选，2代表实用，3.黑科技，4.代表有趣，5.代表冷门类
- success response for json

```
{
	"code": 200,
	"msg": "success",
	"data": [
	{
		"goods_id": 1,
		"name": "xxx",
		"desc": "xxx",
		"home_url": "xxx",
		"category": 1, //1代表精选，2代表实用，3.黑科技，4.代表有趣，5.代表冷门类
		"share_num": 10,
		"price": 18
	},
	{
		"goods_id": 2,
		"name": "xxx",
		"desc": "xxx",
		"home_url": "xxx",
		"category": 2, //1代表精选，2代表实用，3.黑科技，4.代表有趣，5.代表冷门类
		"share_num": 10,
		"price": 18
	}
	]
}
```

##商品详情
- GET /goods/details
- param goods_id  商品id
- success response for json

```
{
	"code": 200,
	"msg": "success",
	"data": {
		"goods_id": 1,
		"name": "xxx",
		"desc": "xxx",
		"category": 2,
		"share_num": 10,
		"price": 18,
		"detail_desc": "xxx",
		"link": "xxxx",
		"image_urls": "xxx,xxx,xxx",
		"video_urls": "xxx,xxx,xxx"
	}

}

```
##每周推荐
- GET /recommend/weeklist
- param page 从0开始，代表当前周
- success response for json

```
{
	"code": 200,
	"msg": "success",
	"data": [
	{
		"goods_id": 1,
		"name": "xxx",
		"desc": "xxx",
		"home_url": "xxx",
		"category": 1, //1代表精选，2代表实用，3.黑科技，4.代表有趣，5.代表冷门类
		"share_num": 10,
		"price": 18
	},
	{
		"goods_id": 2,
		"name": "xxx",
		"desc": "xxx",
		"home_url": "xxx",
		"category": 1, //1代表精选，2代表实用，3.黑科技，4.代表有趣，5.代表冷门类
		"share_num": 10,
		"price": 18
	}
	]

}
```

##榜单
- GET /top/toplist
- param category 类型（1代表每日，2代表每周，3代表每月，4.总排行）
- success response for json

```
{
	"code": 200,
	"msg": "success",
	"data": [
	{
		"goods_id": 1,
		"name": "xxx",
		"desc": "xxx",
		"home_url": "xxx",
		"category": 1, //1代表精选，2代表实用，3.黑科技，4.代表有趣，5.代表冷门类
		"share_num": 10,
		"price": 18
	},
	{
		"goods_id": 2,
		"name": "xxx",
		"desc": "xxx",
		"home_url": "xxx",
		"category": 1, //1代表精选，2代表实用，3.黑科技，4.代表有趣，5.代表冷门类
		"share_num": 10,
		"price": 18
	}
	]

}
```

##我的喜欢
- GET /collection/enjoylist
- success response for json

```
{
	"code": 200,
	"msg": "success",
	"data": [
	{
		"goods_id": 1,
		"name": "xxx",
		"desc": "xxx",
		"home_url": "xxx",
		"category": 1, //1代表精选，2代表实用，3.黑科技，4.代表有趣，5.代表冷门类
		"share_num": 10,
		"price": 18
	},
	{
		"goods_id": 2,
		"name": "xxx",
		"desc": "xxx",
		"home_url": "xxx",
		"category": 1, //1代表精选，2代表实用，3.黑科技，4.代表有趣，5.代表冷门类
		"share_num": 10,
		"price": 18
	}
	]

}
```