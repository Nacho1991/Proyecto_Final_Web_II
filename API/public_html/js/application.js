function list_tasks() {

	var request = $.ajax({
	  url: "http://localhost:3000/tasks.json",
	  method: "GET"
	});

	request.done(function( msg ) {
	  $('#result').val(JSON.stringify(msg));
	});
	 
	request.fail(function( jqXHR, textStatus ) {
	  debugger;
	});
}
