$(function () {
	navState();
	$(window).scroll(function () {
		navState();
	});
});
function navState() {
	if ($(window).scrollTop() > 0) {
		$(".hzo-hd").addClass("fix");
	} else {
		$(".hzo-hd").removeClass("fix");
	}
}
$(function () {
	$(".hzo-nav li").each(function () {
		var leibie = $(this).find("a").data("sort");
		if (window.location.href.indexOf(leibie) != -1) {
			$(this).addClass("cur").parent("li").siblings().find("a").removeClass("cur");
		};
	});
});