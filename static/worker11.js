var settings={
	messages:{
		got_task:'отримано завдання, аргументи — %arguments%, розпочато роботу',
		task_calculated:'обробку завершено, результат — %result%, надсилання результату',
		result_uploaded:'результат завантажено',
		calculating:'обробка триває, з початку пройшло %time% с'
	},
	time:{
		imitate_calculation:3000,
		pause_before_new_task:500,
		pulse_interval:1000
	},
	url:{
		main:'/',
		get_task:'/task/',
		save_result:'/return-result/',
		ping_alive:'/ping/'
	}
};

function message(type,replace){
	var result;
	if(settings.messages[type]){
		var rendered_text=(function(message,replace){
			var template=settings.messages[message];
			for(var key in replace){
				template=template.replace(new RegExp('%'+key+'%','g'),replace[key]);
			}
			return template;
		})(type,replace);
		result={
			type:type,
			text:rendered_text
		};
		$.extend(result,replace);
	}else{
		result={
			type:type
		}
	}
	
	postMessage(JSON.stringify(result));
}

importScripts('lib/jquery.hive.pollen.js');

var id=Math.round(Math.random()*999999),count;

get_task();



function get_task(){
	$.ajax.get({
		url:settings.url.get_task+id,
		data:{id:id},
		success:function(data){
			message('got_task',{arguments:data.text});
			calculate_task(data.text);
		}
	})
}

function calculate_task(arg){
	start_count();
	if(arg=='null'){
		message('tasks_done');
	}else{
		var data=JSON.parse(arg),
			truck=data.truck,
			shipment=data.shipment,
			pack_current=0,
			pack_number=0,
			i;

		shipment=shipment.sort(function(a,b){return b-a});
		while(shipment.length){
			for(i=0;i<shipment.length;i++){
				if(shipment[i]>truck){
					shipment.splice(i--,1);
				}else{
					if(pack_current+shipment[i]<=truck){
						pack_current+=shipment[i];
						shipment.splice(i--,1);
					}
				}
			}
			pack_number++;
			pack_current=0;
		}
		setTimeout(function(){
			return_result(pack_number);
		},settings.time.imitate_calculation);
	}
}

function return_result(result){
	stop_count();
	message(('task_calculated',{result:result}));
	$.ajax.post({
		url:settings.url.save_result+id,
		data:{id: id, result: result},
		success:function(data){
			message('result_uploaded')
			setTimeout(function(){
				get_task();
			},settings.time.pause_before_new_task);
		}
	})
}

function start_count(){
	stop_count();
	count={
		time:1,
		id:setInterval(function(){
				message('calculating',{time:count.time++});
				$.ajax.post({
					url:settings.url.ping_alive+id
				});
			},settings.time.pulse_interval)
	}
}
function stop_count(){
	if(typeof(count)!=='undefined'){
		clearInterval(count.id);
	}
}
