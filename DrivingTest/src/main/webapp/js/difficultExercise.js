
var index=0;
//QuizData将一部加载的数据存起来
var right="";
var QuizData;
$(function(){
	$.post("quiz/findAllDiffQuizs",function(data){
			QuizData=data;
			alert($.cookie('index'));
			if($.cookie('index')==undefined){
				showQuiz(data[index]);
			}else{
				showQuiz(data[$.cookie('index')]);	
			}
	},"json");
});

function showNext(){
	index++;
	$.cookie('index',index);
	/*alert(QuizData[index].qid);
	findDiffQuizById(QuizData[index].qid);*/
	showQuiz(QuizData[index]);
	
}
/*function findDiffQuizById(qid){
	$.get("quiz/findDiffQuizById?qid="+qid,function(data){
		alert(data);
		showQuiz(data);
	},"json");
}*/
function showPre(){
	index--;
	$.cookie('index',index);
	showQuiz(QuizData[index]);
}
//显示一条测试题的内容
function showQuiz(data){
	if($.cookie('index')==undefined){
		$("#quizTitle").text((index+1)+"/100. "+data.question);
	}else{
		$("#quizTitle").text(($.cookie('index'))+"/100. "+data.question);
	}
	
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
