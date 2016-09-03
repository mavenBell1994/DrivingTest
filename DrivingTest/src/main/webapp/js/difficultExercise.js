
var index=0;
//QuizData将一部加载的数据存起来
var right="";
var QuizData;
var length;
$(function(){
	$.post("quiz/findAllDiffQuizs",function(data){
			QuizData=data;
			length=data.length;
			if($.cookie('index')==undefined || $.cookie('index')==null ||  $.cookie('index')==0){
				alert("index"+index);
				showQuiz(data[0]);
			}else{
				index=$.cookie('index');
				alert("cookieIndex=="+index);
				showQuiz(data[index]);
				
			}
	},"json");
});

function showNext(){
	if(index<length-1 && index>=0){
		index++;
		$.cookie('index',index,{path:'/'});
		showQuiz(QuizData[index]);
	}
}

function showPre(){
	if(index>=1){
		index--;
		$.cookie('index',index,{path:'/'});
		showQuiz(QuizData[index]);
	}
	
}
//显示一条测试题的内容data，题号应该和data对应
function showQuiz(data){
	//num题号
	var num=index;
		num++;
		$("#quizTitle").text((num)+"/100. "+data.question);
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
