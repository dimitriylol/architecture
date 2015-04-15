var my_id=Math.round(Math.random()*999999),
	url_get='/task',
	url_return='/return-result';

function calculate(numbers){
	(function(numbers){
		setTimeout(function(){
			return_result(numbers.reduce(function(a,b){return a*b}));
		},1000);
	})(numbers);
}

function go(){
	$.ajax({
		url:url_get,
		data:{id:my_id},
		success:function(data){
			$('#log')
				.append('Отримано завдання: '+data+'\n')
				.append('Виконується обробка (3 секунди).\n');
			calculate(data.split(','));
		}
	})
}
function return_result(result){
	$.ajax({
		url:url_return,
		type:'POST',
		data:{res:result},
        error:function(data){
            $('#log')
                .append('ERROR!')
        },
		success:function(data){
			$('#log')
				.append('Результат '+result+' надіслано для обробки сервером.\n')
				.append('Щоб отримати нове завдання, натисніть кнопку.\n\n');
			var stop=$('#stop');
			if(stop.is(':disabled'))
				$('#start').prop('disabled',false);
			else
				go();
		}
	})
}

$(function(){
	$('#start').click(function(){
		$(this).prop('disabled',true);
		go();
	});
	$('#stop').click(function(){
		$(this).prop('disabled',true);
	});
})