
var index=0;
//QuizData将一部加载的数据存起来
var right='';
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
	right=answers[answers.length-1];
	
	for(var i=0;i<answers.length-1;i++){
		str+='<p  data-answer="16" onclick="choseAnswer(\''+answers[i]+'\','+i+')" class="choseP">';
			str+='<i id="optionImg'+i+'" ></i><span style="font-size: 18px;">'+answers[i]+'</span>';
				str+='</p>';
	}
	
	$("#options-container").html(str);
}
function choseAnswer(answer,i){
	/*alert(answer.charAt(0));*/
	var answer=answer.charAt(0);
	alert("right:"+right);
	if(right==answer){
		$("#optionImg"+i).css({"background-image":"url(images/optionRight.png)"});
	}else{
		$("#optionImg"+i).css({"background-image":"url(images/optionError.png)"});
		switch (right) {
		case 'A':
			$("#optionImg"+0).css({"background-image":"url(images/optionRight.png)"});break;
		case 'B':
			$("#optionImg"+1).css({"background-image":"url(images/optionRight.png)"});break;
		case 'C':
			$("#optionImg"+2).css({"background-image":"url(images/optionRight.png)"});break;
		case 'D':
			$("#optionImg"+3).css({"background-image":"url(images/optionRight.png)"});break;
			
		}
		$(".choseP").removeAttr("onclick");
	}
}