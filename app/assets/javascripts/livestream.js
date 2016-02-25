//JQuery for streaming

jQuery(document).ready(function(){
	setTimeout(function() {
		var source = new EventSource('/livestream');
		source.addEventListener('update', function(e){
			var obj = JSON.parse(e.data);
			$('#stream').html(obj.stream);
			var id =obj.id;
			var book_id = "#bk"+id;
			$(book_id).html('<p>Lawn Booked</p>');

	});
	}, 1);

	console.log("receiving");
});
