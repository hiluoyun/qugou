define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'qu/ad/index',
                    add_url: 'qu/ad/add',
                    edit_url: 'qu/ad/edit',
                    del_url: 'qu/ad/del',
                    multi_url: 'qu/ad/multi',
                    table: 'qu_ad',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'goods_id', title: __('Goods_id')},
                        {field: 'desc', title: __('Desc')},
                        {field: 'img_url', title: __('Img_url'), formatter: Table.api.formatter.url},
                        {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime},
                        {field: 'updatetime', title: __('Updatetime'), formatter: Table.api.formatter.datetime},
                        {field: 'is_delete', title: __('Is_delete')},
                        {field: 'weight', title: __('Weight')},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
            $(document).on("click", ".btn-upload-excel-ad", function(e){
                e.preventDefault();
                Backend.api.open('qu/ad/add_ads', '上传图片');
            })

            $(document).on("click", ".btn-view-ad-pic", function(e){
                e.preventDefault();
                var tableRows = table.bootstrapTable('getSelections');
                //console.log(tableRows);
                //循环弹出多个编辑框
                $.each(tableRows, function (i, tableRow) {
                    // console.log("id: "+id);
                    /*let pic_urls = JSON.parse(tableRow.img_urls);
                    let imgstrs = "";
                    for (index in pic_urls){
                        imgstrs = imgstrs + pic_urls[index]['url']+";";
                    }*/
                    //console.log(imgstrs);
                    Backend.api.open('qu/ad/view_ad_pics' + '?goods_id=' + tableRow['goods_id'], '查看图片');
                    // Fast.api.open('order/tracker' + "?id=" + id, "快递信息列表");
                });
            });
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        add_ads: function(){
            Controller.api.bindevent();
        },
        view_ad_pics: function(){
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});