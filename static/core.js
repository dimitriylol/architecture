var states={
	working:	'<span class="glyphicon glyphicon-flash"></span> працює',
	done:		'<span class="glyphicon glyphicon-ok"></span> роботу завершено',
	stopped:	'<span class="glyphicon glyphicon-pause"></span> призупинено',
	waiting:	'очікування запуску'
}

$(function(){
	$('#state').html(states.waiting);

	var w;

	$('#start').click(function(){
		if(typeof(Worker)!=='undefined'){
			$(this).prop('disabled',true);
			$('#stop').prop('disabled',false);
			$('#state').html(states.working);

			if(typeof(w)=='undefined'){
				w=new Worker('../static/worker.js?'+Math.random());
			}
			w.onmessage=function(event){
				var result=eval('('+event.data+')');
				$('#type').text(result.type);
				$('#data').val(event.data);
                console.log(event.data);

				$('#time-calculating').text(0);
				switch(result.type){
					case 'tasks_done':
							$('#stop').click();
							$('#state').html(states.done);
						break;
					case 'got_task':
                            if(result.arguments!='null'){
                                start_count();
                                $('#arguments').text(result.arguments);
                            }
						break;
					case 'task_calculated':
                            if(result.result){
                                stop_count();
                                $('#arguments').text(result.arguments);
                            }
						break;
					case 'result_uploaded':
						break;
					case 'calculating':
							//$('#time-calculating').text(result.time);
						break;
					default:
							alert('something wrong');
						break;
				}
			};
		}else{
			alert('Браузер не підтримує технологію web-worker');
		}
	});
	$('#stop').click(function(){
		w.terminate();
		w=undefined;
		$('#state').html(states.stopped);

		$(this).prop('disabled',true);
		$('#start').prop('disabled',false);
	})
});

function start_count(){
	stop_count();
	count={
		time:1,
		id:setInterval(function(){
				$('#time-calculating').text(count.time++);
			},1000)
	}
}
function stop_count(){
	if(typeof(count)!=='undefined'){
		clearInterval(count.id);
	}
}