function sellGuitar(guitarId){
	var strapType = $("select[id='strap-type']").val();
	$.ajax({
		url: 'guitar/sellGuitar',
		type: 'GET',
		data: {'id': guitarId},
		success: function(data){
           $("span[id='item-desc-"+guitarId+"']").html("");
           $("span[id='sold-item-desc-"+guitarId+"']").append(data);
		}
	})	
}