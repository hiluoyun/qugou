define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'qu/goods/index',
                    add_url: 'qu/goods/add',
                    edit_url: 'qu/goods/edit',
                    del_url: 'qu/goods/del',
                    multi_url: 'qu/goods/multi',
                    table: 'qu_goods',
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
                        {field: 'name', title: __('Name')},
                        {field: 'desc', title: __('Desc')},
                        {field: 'home_url', title: __('Home_url'), formatter: Table.api.formatter.url},
                        {field: 'category', title: __('Category')},
                        {field: 'weight', title: __('Weight')},
                        {field: 'share_num', title: __('Share_num')},
                        {field: 'buy_num', title: __('Buy_num')},
                        {field: 'browse_num', title: __('Browse_num')},
                        {field: 'price', title: __('Price')},
                        {field: 'status', title: __('Status'), formatter: Table.api.formatter.status},
                        {field: 'collection_num', title: __('Collection_num')},
                        {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime},
                        {field: 'updatetime', title: __('Updatetime'), formatter: Table.api.formatter.datetime},
                        {field: 'create_user', title: __('Create_user')},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            

            // 为表格绑定事件
            Table.api.bindevent(table);
            //Form.api.bindevent();

            //上传文件
            $(document).on("click", ".btn-upload-file", function (e) {
                e.preventDefault();
                
                Backend.api.open('qu/goods/upload_file', '上传文件');
            });

            $(document).on("click", ".btn-update-pic", function(e){
                e.preventDefault();
                var ids = Table.api.selectedids(table);
                //循环弹出多个编辑框
                $.each(ids, function (i, id) {
                    // console.log("id: "+id);
                    Backend.api.open('qu/goods/update_pic' + '?id=' + id, '查看图片');
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
        upload_file: function () {
            Controller.api.bindevent();
        },
        update_pic: function () {
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