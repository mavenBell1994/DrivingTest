var index=0;
//QuizData将一部加载的数据存起来
var QuizData;
$(function(){
	$.post("quiz/findAllDiffQuizs",function(data){
		QuizData=data
			showQuiz(data[index]);
	},"json");
});

function showNext(){
	index++;
	$('selector').data('dataNext',index);
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
//显示一条测试题的内容
function showQuiz(data){
	$("#quizTitle").text((index+1)+"/100. "+data.question);
	var answers=data.answer.split("@");
	var str="";
	for(var i=0;i<answers.length-1;i++){
		str+='<p class="" data-answer="16" >';
			str+='<i></i><span style="font-size: 18px;">'+answers[i]+'</span>';
				str+='</p>';
	}
	$("#options-container").html(str);
}
