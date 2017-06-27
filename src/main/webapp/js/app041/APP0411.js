var dataSet = [
    [ "1", "财务申请", "周雪洁1", "高新学院发文样例001", "审核" ],
    [ "2", "制度审批", "周雪洁2", "高新学院发文样例002", "审核" ],
    [ "3", "决议", "周雪洁3", "高新学院发文样例003", "审核" ],
];

$(document).ready(function () {
	$.cleditor.defaultOptions.height = 350;
	$("#APP0411_meetingInfo_content").cleditor();
	

    $(".form_datetime").datetimepicker({
        format: "yyyy-mm-dd hh:ii",
        autoclose: true,
        todayBtn: true,
        startDate: "2013-02-14 10:00",
        minuteStep: 10
    });

    $("#add_doc_btn").click(APP0411.addDoc);

    $('#example').DataTable( {
        data: dataSet,
        stateSave: true,
        "pagingType": "simple",
        columns: [
            { title: "No", width: "5%", className: "text-center"},
            { title: "公文类型", width: "15%", className: "text-center"},
            { title: "拟稿人", width: "10%", className: "text-center"},
            { title: "公文标题", width: "60%", className: "text-center", "render": function ( data, type, full, meta ) {
                																			return '<a href="#" data-toggle="modal" data-target="#myModal1">' + data + '</a>';
																			            }
            },
            { title: "操作", width: "10%", className: "text-center", "render": function ( data, type, full, meta ) {
                																			return '<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2">' + data + '</button>';
																			            }
            }
        ],
        "language": {
            "lengthMenu": "每页显示 _MENU_ 件",
            "zeroRecords": "没有找到符合条件的数据！",
            "info": " _PAGE_ / _PAGES_ 页  共 _MAX_ 件",
            "infoEmpty": "No records available",
            "infoFiltered": "(从 _MAX_ 件结果中过滤后)",
            "search": "<span class='glyphicon glyphicon-filter'></span> ",
            "paginate": {
                  "previous": "上一页",
                  "next": "下一页"
             }
        },
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]]
    } );
    
});
var APP0411 = {
	addDoc : function() {
		var fm = $("form");
		fm[0].action = "/gx-oa/APP0412.action";
		fm[0].submit();
	}
}