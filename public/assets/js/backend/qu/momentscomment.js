define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'qu/momentscomment/index',
                    add_url: 'qu/momentscomment/add',
                    edit_url: 'qu/momentscomment/edit',
                    del_url: 'qu/momentscomment/del',
                    multi_url: 'qu/momentscomment/multi',
                    table: 'qu_moments_comment',
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
                        {field: 'p_id', title: __('P_id')},
                        {field: 'moments_id', title: __('Moments_id')},
                        {field: 'from_user_id', title: __('From_user_id')},
                        {field: 'to_user_id', title: __('To_user_id')},
                        {field: 'to_user_is_read', title: __('To_user_is_read')},
                        {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime},
                        {field: 'updatetime', title: __('Updatetime'), formatter: Table.api.formatter.datetime},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
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