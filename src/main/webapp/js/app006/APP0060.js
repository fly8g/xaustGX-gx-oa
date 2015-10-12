var dataSet = [
    [ "", "新浪财经", "2015级新生军训汇报表演暨表彰大会圆满举行", "2015/09/30" ],
    [ "", "百度", "国际教育学院中韩文化交流活动共赏秋夕佳节", "2015/09/29" ],
    [ "", "高新学院新闻", "西安科技大学高新学院甲骨文“雇主联盟”计划合作院校正式挂牌", "2015/09/27" ],
    [ "", "高新学院新闻", "欢迎来到高新Family！我院召开新进教师座淡会", "2015/09/27" ],
    [ "", "高新学院新闻", "青春因坚持而璀璨——2015级新生军训拉练活动圆满完成", "2015/09/27" ],
    [ "", "高新学院新闻", "高新学院2015-2016学年学生资助工作会议顺利召开", "2015/09/25" ],
    [ "", "高新学院新闻", "迈阿密大学代表到访我院国际教育学院", "2015/09/25" ],
    [ "", "高新学院新闻", "高新学院2015级新生开学典礼暨军训动员大会举行", "2015/09/25" ],
    [ "", "高新学院新闻", "Hi，新同学！高新学院喜迎2606名新生入学", "2015/09/25" ],
    [ "", "高新学院新闻", "2015级新生报到流程", "2015/09/25" ],
    [ "", "高新学院新闻", "关于迎新期间警惕违法犯罪分子校园诈骗、盗窃的安全提示", "2015/09/25" ],
    [ "", "高新学院新闻", "关于做好学生床上用品质量监督管理的通知", "2015/09/25" ],
    [ "", "高新学院新闻", "只待你来！2015迎新工作一切就绪", "2015/09/25" ],
    [ "", "高新学院新闻", "经济与管理学院召开新学期全体教职工会议", "2015/09/25" ],
    [ "", "高新学院新闻", "开学第一课，五星红旗迎风飘扬！", "2015/09/25" ],
    [ "", "高新学院新闻", "我院迎接陕西省教育厅高校巡视诊断工作动员部署大会召开", "2015/09/25" ],
    [ "", "高新学院新闻", "学成三样宝，国际教育学院韩国留学生结束交流学习", "2015/09/25" ],
    [ "", "高新学院新闻", "昂首走天下 母校留心间", "2015/09/25" ],
    [ "", "高新学院新闻", "2015届毕业生毕业典礼院长赵建会寄语", "2015/09/25" ],
    [ "", "高新学院新闻", "2015届毕业生毕业典礼教师代表欢送辞", "2015/09/25" ],
    [ "", "高新学院新闻", "2015级新生军训汇报表演暨表彰大会圆满举行", "2015/09/30" ],
    [ "", "高新学院新闻", "国际教育学院中韩文化交流活动共赏秋夕佳节", "2015/09/29" ],
    [ "", "高新学院新闻", "西安科技大学高新学院甲骨文“雇主联盟”计划合作院校正式挂牌", "2015/09/27" ],
    [ "", "高新学院新闻", "欢迎来到高新Family！我院召开新进教师座淡会", "2015/09/27" ],
    [ "", "高新学院新闻", "青春因坚持而璀璨——2015级新生军训拉练活动圆满完成", "2015/09/27" ],
    [ "", "高新学院新闻", "高新学院2015-2016学年学生资助工作会议顺利召开", "2015/09/25" ],
    [ "", "高新学院新闻", "迈阿密大学代表到访我院国际教育学院", "2015/09/25" ],
    [ "", "高新学院新闻", "高新学院2015级新生开学典礼暨军训动员大会举行", "2015/09/25" ],
    [ "", "高新学院新闻", "Hi，新同学！高新学院喜迎2606名新生入学", "2015/09/25" ],
    [ "", "高新学院新闻", "2015级新生报到流程", "2015/09/25" ],
    [ "", "高新学院新闻", "关于迎新期间警惕违法犯罪分子校园诈骗、盗窃的安全提示", "2015/09/25" ],
    [ "", "高新学院新闻", "关于做好学生床上用品质量监督管理的通知", "2015/09/25" ],
    [ "", "高新学院新闻", "只待你来！2015迎新工作一切就绪", "2015/09/25" ],
    [ "", "高新学院新闻", "经济与管理学院召开新学期全体教职工会议", "2015/09/25" ],
    [ "", "高新学院新闻", "开学第一课，五星红旗迎风飘扬！", "2015/09/25" ],
    [ "", "高新学院新闻", "我院迎接陕西省教育厅高校巡视诊断工作动员部署大会召开", "2015/09/25" ],
    [ "", "高新学院新闻", "学成三样宝，国际教育学院韩国留学生结束交流学习", "2015/09/25" ],
    [ "", "高新学院新闻", "昂首走天下 母校留心间", "2015/09/25" ],
    [ "", "高新学院新闻", "2015届毕业生毕业典礼院长赵建会寄语", "2015/09/25" ],
];

$.extend( true, $.fn.dataTable.defaults, {
//    "searching": false,
//    "ordering": false
} );

$(document).ready(function() {
	$.cleditor.defaultOptions.height = 650;
	$("#APP0050_newsInfo_content").cleditor();
	
    $('#example').DataTable( {
        data: dataSet,
        stateSave: true,
        "pagingType": "simple",
        columns: [
            { title:"<input type='checkbox' />", className: "text-center", width: "5%", "render": function ( data, type, full, meta ) {
                                                                            return "<input type='checkbox' />";
                                                                        }
            },
            { title: "发件人", width: "15%"},
            { title: "主题", width: "75%", "render": function ( data, type, full, meta ) {
                                                       return '<a href="#">' + data + '</a>';
                                                   }
            },
            { title: "时间", width: "5%"}
        ],
        "language": {
            "lengthMenu": "每页显示 _MENU_ 封",
            "zeroRecords": "没有找到符合条件的数据！",
            "info": " _PAGE_ / _PAGES_ 页  共 _MAX_ 封",
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
    
    $("#write_mail").click(APP0060.writeMail);
} );

var APP0060 = {
	writeMail : function() {
		window.location($("#write_mail_hid").attr("href"));
	}
};