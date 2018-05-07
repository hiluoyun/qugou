define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'qu/details/index',
                    add_url: 'qu/details/add',
                    edit_url: 'qu/details/edit',
                    del_url: 'qu/details/del',
                    multi_url: 'qu/details/multi',
                    table: 'qu_details',
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
                        {field: 'id', title: __('Id'),visible:false},
                        {field: 'goods_id', title: __('Goods_id')},
                        {field: 'img_urls', title: '图片'},
                        {field: 'video_urls', title: '视频'},
                        {field: 'desc', title: '详情描述'},
                        {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime},
                        {field: 'updatetime', title: __('Updatetime'), formatter: Table.api.formatter.datetime},
                        {field: 'is_delete', title: __('Is_delete')},
                        {field: 'category', title: __('Category')},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);

            //上传文件
            $(document).on("click", ".btn-upload-details", function (e) {
                e.preventDefault();
                Backend.api.open('qu/details/upload_video_desc', 'vdesc文件');
            });

            $(document).on("click", ".btn-view-detail-pics", function(e){
                e.preventDefault();
                var tableRows = table.bootstrapTable('getSelections');
                //console.log(tableRows);
                //循环弹出多个编辑框
                $.each(tableRows, function (i, tableRow) {
                    // console.log("id: "+id);
                    let pic_urls = JSON.parse(tableRow.img_urls);
                    let imgstrs = "";
                    for (index in pic_urls){
                        imgstrs = imgstrs + pic_urls[index]['url']+";";
                    }
                    //console.log(imgstrs);
                    Backend.api.open('qu/details/view_detail_pics' + '?goods_id=' + tableRow['goods_id']+'&imgstrs='+imgstrs, '查看图片');
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
        upload_video_desc: function() {
            Controller.api.bindevent();
        },
        view_detail_pics: function(){
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