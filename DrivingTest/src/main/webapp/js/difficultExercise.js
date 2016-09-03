
var index=0;
//QuizData将一部加载的数据存起来
var right="";
var QuizData;
var length;
$(function(){
	$.post("quiz/findAllDiffQuizs",function(data){
			QuizData=data;
			length=data.length;
			alert($.cookie('index'));
			if($.cookie('index')==undefined || $.cookie('index')==null ){
				alert("index"+index);
				showQuiz(data[index]);
			}else{
				alert("cookieIndex=="+$.cookie('index'));
				showQuiz(data[$.cookie('index')]);
				
			}
	},"json");
});

function showNext(){
	index++;
	if(index<=length){
		$.cookie('index',index);
		showQuiz(QuizData[index]);
	}
}

function showPre(){
	index--;
	$.cookie('index',index);
	showQuiz(QuizData[index]);
}
//显示一条测试题的内容
function showQuiz(data){
	
	if($.cookie('index')!=undefined){
		index=$.cookie('index');
	}
	$("#quizTitle").text((index)+"/100. "+data.question);
	var answers=data.answer.split("@");
	var str="";
	for(var i=0;i<answers.length-1;i++){
		str+='<p class="" data-answer="16" >';
			str+='<i></i><span style="font-size: 18px;">'+answers[i]+'</span>';
				str+='</p>';
	}
	//right=answer[answers.length-1];
	$("#options-container").html(str);
}
