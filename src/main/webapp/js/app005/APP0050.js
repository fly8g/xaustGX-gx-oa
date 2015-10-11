$(document).ready(function () {
	$.cleditor.defaultOptions.height = 650;
	$("#APP0050_newsInfo_content").cleditor();
	

    $(".form_datetime").datetimepicker({
        format: "yyyy-mm-dd hh:ii",
        autoclose: true,
        todayBtn: true,
        startDate: "2013-02-14 10:00",
        minuteStep: 10
    });

});