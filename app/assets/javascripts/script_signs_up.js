$(document).on("turbolinks:load",function(){
	$( function() {
		$( document ).tooltip({
			track: true,
			 position: {
				my: "right-100 bottom-10",
				at: "left-100 top"
			}
		});
	});
});
