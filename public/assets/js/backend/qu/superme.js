define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'qu/superme/index',
                    add_url: 'qu/superme/add',
                    edit_url: 'qu/superme/edit',
                    del_url: 'qu/superme/del',
                    multi_url: 'qu/superme/multi',
                    table: 'qu_superme',
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
                        {field: 'is_delete', title: __('Is_delete')},
                        {field: 'weight', title: __('Weight')},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);

            $(document).on("click", ".btn-upload-excel-superme", function(e){
                e.preventDefault();
                Backend.api.open('qu/superme/add_superme', '上传图片');
            })
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        add_superme: function(){
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