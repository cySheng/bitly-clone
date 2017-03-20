/*$(document).ready(function() {
	$console.log("hi");
	$(document).tooltip();
	$(".btn btn-default").click(function() {
			$("this.id").hide();
		});
});*/

$(document).ready(function () {
	$(".hidebutton").click(function() {
		console.log($(this).parent().parent());
		$(this).parent().parent().hide();
	});
});