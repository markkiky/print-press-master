$(document).ready(function () {

	$('#data-table').on('click','.delete-record', function () {
		$('.notification-container').addClass('fadeIn');

		$('.notification-container').removeClass('d-none');

		$('.notification-container').removeClass('fadeOut');
		$('.notification-container').removeClass('d-none');
		$('.notification-container .card').addClass('bounceUp');
		var title="lamba;";
		var title=$(this).parent().parent().siblings('.biz-name').text();
		$('#record-name').text(title);
		
		console.log(title);
	});
	
	$('.row').on('click','.upload-file', function () {
		$('.drop-file-container').addClass('fadeIn');

		$('.drop-file-container').removeClass('d-none');

		$('.drop-file-container').removeClass('fadeOut');
		$('.drop-file-container').removeClass('d-none');
		$('.drop-file-container .card').addClass('bounceUp');
		
	});

	$('.close-droper').on('click', function () {
		closedrop();
	});
	
	$('.close-delete').on('click', function () {
		closedeletealert();
	});

	function closedeletealert() {
		$('.notification-container').addClass('fadeOut');
		$('.notification-container').addClass('d-none');
		$('.notification-container .card').addClass('fadeOutDown');

		setTimeout(function () {
			$('.notification-container').removeClass('fadeOut');
			$('.notification-container .card').removeClass('fadeOutDown');
		}, 1000);
	}
	
	function closedrop() {
		$('.drop-file-container').addClass('fadeOut');
		$('.drop-file-container').addClass('d-none');
		$('.drop-file-container .card').addClass('fadeOutDown');

		setTimeout(function () {
			$('.drop-file-container').removeClass('fadeOut');
			$('.drop-file-container .card').removeClass('fadeOutDown');
		}, 1000);
	}
	
	
	
});
