function spot(){
		$(SpotPopup.setup);
}

var SpotPopup = {
	setup: function() {
		var popupDiv = $('<div id="spotInfo"></div>');
		popupDiv.hide().appendTo($('body'));
		$(document).on('click', '#spot a', SpotPopup.getSpotInfo);
	}
	,getSpotInfo: function() {
		$.ajax({type: 'GET',
				url: $(this).attr('href'),
				timeout: 5000,
				success: SpotPopup.showSpotInfo,
				error: function(xhrObj, textStatus, exception) {alert('Error!');}
	});
	return(false);
	}
	,showSpotInfo: function(data, requestStatus, xhrObject) {
		var oneFourth = Math.ceil($(window).width() / 4);
		$('#spotInfo').css({'left': oneFourth, 'width': oneFourth, 'top': 250}).html(data).show();
		$('#closeLink').click(SpotPopup.hideSpotInfo);
		return(false);
	}
	,hideSpotInfo: function() {
		$('#spotInfo').hide();
		return(false);
	}
};
