$(document).ready(function() {

	reloadMessage();
});

function reloadMessage() {
	var disMsg = $("#disp_message");
	var hidMsg = $("#hidden_message");
	disMsg.empty();
	if (getMessageCount() > 0) {
		var closeTag = '<a class="close" href="#" data-dismiss="alert">x</a>';
		disMsg.addClass("alert alert-danger");
		disMsg.html(closeTag + hidMsg.html());
		changeErrorFieldBackground();
	}
}

function getFirstMessage() {

	$("#hidden_message li").each(function(index, elem){
		var message = $(elem).text();
		if (message == "") {
			$(elem).remove();
		}
	})
	return $("#hidden_message li:first");
}

function getMessageCount() {
	return $("#hidden_message li").size();
}

function changeErrorFieldBackground() {
	$("#fieldErrors > span").each(function(){
		var fieldName = $(this).text();
		$('[name="' + fieldName + '"]').parent().parent().addClass("has-error");
	});
}