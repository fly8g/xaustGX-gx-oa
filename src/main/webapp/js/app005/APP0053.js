var dataSet = [
//    [ "Tiger Nixon", "System Architect", "Edinburgh", "5421", "2011/04/25", "$320,800" ],
//    [ "Garrett Winters", "Accountant", "Tokyo", "8422", "2011/07/25", "$170,750" ],
//    [ "Ashton Cox", "Junior Technical Author", "San Francisco", "1562", "2009/01/12", "$86,000" ],
//    [ "Cedric Kelly", "Senior Javascript Developer", "Edinburgh", "6224", "2012/03/29", "$433,060" ],
//    [ "Airi Satou", "Accountant", "Tokyo", "5407", "2008/11/28", "$162,700" ],
//    [ "Brielle Williamson", "Integration Specialist", "New York", "4804", "2012/12/02", "$372,000" ],
//    [ "Herrod Chandler", "Sales Assistant", "San Francisco", "9608", "2012/08/06", "$137,500" ],
//    [ "Rhona Davidson", "Integration Specialist", "Tokyo", "6200", "2010/10/14", "$327,900" ],
//    [ "Colleen Hurst", "Javascript Developer", "San Francisco", "2360", "2009/09/15", "$205,500" ],
//    [ "Sonya Frost", "Software Engineer", "Edinburgh", "1667", "2008/12/13", "$103,600" ],
//    [ "Jena Gaines", "Office Manager", "London", "3814", "2008/12/19", "$90,560" ],
//    [ "Quinn Flynn", "Support Lead", "Edinburgh", "9497", "2013/03/03", "$342,000" ],
//    [ "Charde Marshall", "Regional Director", "San Francisco", "6741", "2008/10/16", "$470,600" ],
//    [ "Haley Kennedy", "Senior Marketing Designer", "London", "3597", "2012/12/18", "$313,500" ],
//    [ "Tatyana Fitzpatrick", "Regional Director", "London", "1965", "2010/03/17", "$385,750" ],
//    [ "Michael Silva", "Marketing Designer", "London", "1581", "2012/11/27", "$198,500" ],
//    [ "Paul Byrd", "Chief Financial Officer (CFO)", "New York", "3059", "2010/06/09", "$725,000" ],
//    [ "Gloria Little", "Systems Administrator", "New York", "1721", "2009/04/10", "$237,500" ],
//    [ "Bradley Greer", "Software Engineer", "London", "2558", "2012/10/13", "$132,000" ],
//    [ "Dai Rios", "Personnel Lead", "Edinburgh", "2290", "2012/09/26", "$217,500" ],
//    [ "Jenette Caldwell", "Development Lead", "New York", "1937", "2011/09/03", "$345,000" ],
//    [ "Yuri Berry", "Chief Marketing Officer (CMO)", "New York", "6154", "2009/06/25", "$675,000" ],
//    [ "Caesar Vance", "Pre-Sales Support", "New York", "8330", "2011/12/12", "$106,450" ],
//    [ "Doris Wilder", "Sales Assistant", "Sidney", "3023", "2010/09/20", "$85,600" ],
//    [ "Angelica Ramos", "Chief Executive Officer (CEO)", "London", "5797", "2009/10/09", "$1,200,000" ],
//    [ "Gavin Joyce", "Developer", "Edinburgh", "8822", "2010/12/22", "$92,575" ],
//    [ "Jennifer Chang", "Regional Director", "Singapore", "9239", "2010/11/14", "$357,650" ],
//    [ "Brenden Wagner", "Software Engineer", "San Francisco", "1314", "2011/06/07", "$206,850" ],
//    [ "Fiona Green", "Chief Operating Officer (COO)", "San Francisco", "2947", "2010/03/11", "$850,000" ],
//    [ "Shou Itou", "Regional Marketing", "Tokyo", "8899", "2011/08/14", "$163,000" ],
//    [ "Michelle House", "Integration Specialist", "Sidney", "2769", "2011/06/02", "$95,400" ],
//    [ "Suki Burks", "Developer", "London", "6832", "2009/10/22", "$114,500" ],
//    [ "Prescott Bartlett", "Technical Author", "London", "3606", "2011/05/07", "$145,000" ],
//    [ "Gavin Cortez", "Team Leader", "San Francisco", "2860", "2008/10/26", "$235,500" ],
//    [ "Martena Mccray", "Post-Sales support", "Edinburgh", "8240", "2011/03/09", "$324,050" ],
//    [ "Unity Butler", "Marketing Designer", "San Francisco", "5384", "2009/12/09", "$85,675" ]
    [ "2015级新生军训汇报表演暨表彰大会圆满举行", "2015/09/30" ],
    [ "国际教育学院中韩文化交流活动共赏秋夕佳节", "2015/09/29" ],
    [ "西安科技大学高新学院甲骨文“雇主联盟”计划合作院校正式挂牌", "2015/09/27" ],
    [ "欢迎来到高新Family！我院召开新进教师座淡会", "2015/09/27" ],
    [ "青春因坚持而璀璨——2015级新生军训拉练活动圆满完成", "2015/09/27" ],
    [ "高新学院2015-2016学年学生资助工作会议顺利召开", "2015/09/25" ],
    [ "迈阿密大学代表到访我院国际教育学院", "2015/09/25" ],
    [ "高新学院2015级新生开学典礼暨军训动员大会举行", "2015/09/25" ],
    [ "Hi，新同学！高新学院喜迎2606名新生入学", "2015/09/25" ],
    [ "2015级新生报到流程", "2015/09/25" ],
    [ "关于迎新期间警惕违法犯罪分子校园诈骗、盗窃的安全提示", "2015/09/25" ],
    [ "关于做好学生床上用品质量监督管理的通知", "2015/09/25" ],
    [ "只待你来！2015迎新工作一切就绪", "2015/09/25" ],
    [ "经济与管理学院召开新学期全体教职工会议", "2015/09/25" ],
    [ "开学第一课，五星红旗迎风飘扬！", "2015/09/25" ],
    [ "我院迎接陕西省教育厅高校巡视诊断工作动员部署大会召开", "2015/09/25" ],
    [ "学成三样宝，国际教育学院韩国留学生结束交流学习", "2015/09/25" ],
    [ "昂首走天下 母校留心间", "2015/09/25" ],
    [ "2015届毕业生毕业典礼院长赵建会寄语", "2015/09/25" ],
    [ "2015届毕业生毕业典礼教师代表欢送辞", "2015/09/25" ],
    [ "2015级新生军训汇报表演暨表彰大会圆满举行", "2015/09/30" ],
    [ "国际教育学院中韩文化交流活动共赏秋夕佳节", "2015/09/29" ],
    [ "西安科技大学高新学院甲骨文“雇主联盟”计划合作院校正式挂牌", "2015/09/27" ],
    [ "欢迎来到高新Family！我院召开新进教师座淡会", "2015/09/27" ],
    [ "青春因坚持而璀璨——2015级新生军训拉练活动圆满完成", "2015/09/27" ],
    [ "高新学院2015-2016学年学生资助工作会议顺利召开", "2015/09/25" ],
    [ "迈阿密大学代表到访我院国际教育学院", "2015/09/25" ],
    [ "高新学院2015级新生开学典礼暨军训动员大会举行", "2015/09/25" ],
    [ "Hi，新同学！高新学院喜迎2606名新生入学", "2015/09/25" ],
    [ "2015级新生报到流程", "2015/09/25" ],
    [ "关于迎新期间警惕违法犯罪分子校园诈骗、盗窃的安全提示", "2015/09/25" ],
    [ "关于做好学生床上用品质量监督管理的通知", "2015/09/25" ],
    [ "只待你来！2015迎新工作一切就绪", "2015/09/25" ],
    [ "经济与管理学院召开新学期全体教职工会议", "2015/09/25" ],
    [ "开学第一课，五星红旗迎风飘扬！", "2015/09/25" ],
    [ "我院迎接陕西省教育厅高校巡视诊断工作动员部署大会召开", "2015/09/25" ],
    [ "学成三样宝，国际教育学院韩国留学生结束交流学习", "2015/09/25" ],
    [ "昂首走天下 母校留心间", "2015/09/25" ],
    [ "2015届毕业生毕业典礼院长赵建会寄语", "2015/09/25" ],
];

$.extend( true, $.fn.dataTable.defaults, {
//    "searching": false,
    "ordering": false
} );

$(document).ready(function() {
    $('#example').DataTable( {
        data: dataSet,
        stateSave: true,
        columns: [
//            { title: "Name" },
//            { title: "Position" },
//            { title: "Office" },
//            { title: "Extn." },
//            { title: "Start date" },
//            { title: "Salary" }
            { width: "95%", "render": function ( data, type, full, meta ) {
                                                       return '・<a href="#">' + data + '</a>';
                                                   }
            },
            { width: "5%"}
        ],
        "language": {
            "lengthMenu": "每页显示 _MENU_ 条",
            "zeroRecords": "没有找到符合条件的数据！",
            "info": "当前第 _PAGE_ 页    共 _PAGES_ 页  _MAX_ 条",
            "infoEmpty": "No records available",
            "infoFiltered": "(从 _MAX_ 件结果中过滤后)",
            "search": "搜索：",
            "paginate": {
                  "previous": "上一页",
                  "next": "下一页"
             }
        },
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]]
    } );
} );