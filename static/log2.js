var refresh_interval=1000;

function refresh_data(){
	$.ajax({
		type:'get',
		url:'/log',
		success:function(data){
			$('span').each(function(){
				$(this).text($(data).find('#'+$(this).attr('id')).text());
			})
			setTimeout(refresh_data,refresh_interval);
		}
	})
}

$(function(){
	refresh_data();
})