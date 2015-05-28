$(document).ready(function(){

	$(".not-favorite").on("click", function(){
		$(this).val("Remove from Favorites").addClass("favorite").removeClass("not-favorite")
		var itemId = $(this).attr("id")

		$.ajax({
			method: "POST",
			url: "/favorites/" + itemId
		})
	});

	$(".favorite").on("click", function(){
		$(this).val("Add to Favorites").addClass("not-favorite").removeClass("favorite")
	
		var itemId = $(this).attr("id")

		$.ajax({
			method: "DELETE",
			url: "/favorites/" + itemId
		})
	});




});