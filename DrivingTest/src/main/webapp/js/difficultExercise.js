
var index=0;
//QuizData将一部加载的数据存起来
var right='';
var QuizData;
var length;
var rightCount=0;
var errorCount=0;
var rightRate=0;
var flag=true;
//作为是否记录对错的标志
$(function(){
	var cid=$("#cid").val();
	if($.cookie('rightCount')!=undefined){
		rightCount=$.cookie('rightCount');
	}
	$("#answerRight").text(rightCount+"题");
	if($.cookie('errorCount')!=undefined){
		errorCount=$.cookie('errorCount');
	}
	$("#answerError").text(errorCount+"题");
	rightCount=parseInt(rightCount);
	errorCount=parseInt(errorCount);
	if((rightCount+errorCount)!=0){
			rightRate=(100*rightCount/(rightCount+errorCount)).toFixed(0);
			$("#rightRate").text(rightRate+"%");
	}else{
		$("#rightRate").text(100+"%");
	}
	$.post("quiz/findAllDiffQuizs",function(data){
			QuizData=data;
			length=data.length;
			if($.cookie('index')==undefined || $.cookie('index')==null ||  $.cookie('index')==0){
				showQuiz(data[0]);
			}else{
				index=$.cookie('index');
				showQuiz(data[index]);
			}
			
	},"json");
	
});

function showNext(){
	if(index<length-1 && index>=0){
		index++;
		$.cookie('index',index,{path:'/'});
		showQuiz(QuizData[index]);
	}else{
		alert("已经是最后一题了");
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
var quiz;
function showQuiz(data){
	//通过异步加载把是否收藏显示出来
	showFavorSave(data.qid);
	quiz=data;
	//num题号
	var num=index;
		num++;
		$("#quizTitle").text((num)+"/100. "+data.question);
	var answers=data.answer.split("@");
	var str="";
	right=answers[answers.length-1];
	var img='<img src="'+data.pic+'"/>';
	for(var i=0;i<answers.length-1;i++){
		str+='<p  data-answer="16" onclick="choseAnswer(\''+answers[i]+'\','+i+','+data.qid+','+data.errTotal+')" class="choseP">';
			str+='<i id="optionImg'+i+'" ></i><span style="font-size: 18px;">'+answers[i]+'</span>';
				str+='</p>';
	}
	var type;
	type='<p class="weizuo">'+data.qtype+'，请选择你认为正确的答案！</p>';
	$("#qtype").html(type);
	$("#options-container").html(str);
	$("#quizPics").html(img);
	
	//点击选项的时候把值存在cookie里，在显示题目的时候，根据qid进行匹配，匹配到显示自己的做题记录
	if($.cookie('recordAnswer')!=undefined && $.cookie('recordAnswer')!=null){
		if($.cookie('recordAnswer').indexOf("@"+data.qid+",")!=-1){
			var recordAnswers= $.cookie('recordAnswer').split("@");
			for(var i=1;i<recordAnswers.length;i++){
/*				alert(recordAnswers[i]+"===="+(data.qid+",")+"==="+recordAnswers[i].contains(data.qid+",")+"=="+recordAnswers[i].substring(0,recordAnswers[i].indexOf(",") ));
*/				if(recordAnswers[i].substring(0,recordAnswers[i].indexOf(","))==data.qid){
					var ra=recordAnswers[i].split(",");
					if(ra[0]==data.qid){
						var j;
			 			switch (ra[1]) {
						case 'A':j=0;	break;
						case 'B':j=1;	break;
						case 'C':j=2;	break;
						case 'D':j=3;	break;
						}
						$(".choseP").removeAttr("onclick");
						flag=false;
						choseAnswer(ra[1],j,ra[0],data.errTotal);
						flag=true;
					}
				}
			}
		}
	}
	
}
function choseAnswer(answer,i,qid,errTotal){
//把自己的选项和题号存在cookie里
	var cid=$("#cid").text();
	/*alert(answer.charAt(0));*/
	var answer=answer.charAt(0);
	var recordAnswer="";
	alert("right:"+right);
	//点击选项后存取选项和题目的id
	if($.cookie('recordAnswer')!=undefined){
		recordAnswer=$.cookie('recordAnswer');
	}
	if(recordAnswer.indexOf(("@"+qid+","+answer))==-1){
		recordAnswer+="@"+qid+","+answer;
		$.cookie('recordAnswer',recordAnswer,{path:'/'});
	}
	if(right==answer){
		$("#optionImg"+i).css({"background-image":"url(images/optionRight.png)"});
		var type='<p style="color:#2da5ec;font-size: 18px;">回答正确!</p>';
		$("#qtype").html(type);
		if(cid>0 && flag){
			$.post("selfErrors/removeErrorSave",{"cid":cid,"errorSave":qid},function(data){
				if(data){
					alert("已经从错题表中移除");
				}
			},"json");
		}
		//答对几题
		if(flag){
			rightCount++;
			$.cookie('rightCount',rightCount,{path:'/'});
			$("#answerRight").text(rightCount+"题");
			//选中直接下一题
			if($("#autoNext").prop("checked")){
				showNext();
				return;
			}
		}
		$("#answerRight").text(rightCount+"题");
		$(".choseP").removeAttr("onclick");
	}else{
		$("#optionImg"+i).css({"background-image":"url(images/optionError.png)"});
		var type='<p style="font-size: 18px;"><label style="color:red;">回答错误!&nbsp;&nbsp;&nbsp;&nbsp;</label>正确答案: <b style="color:#2da5ec;">'+right+'</b></p>';
		$("#qtype").html(type);
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
		//答错几题
		if(flag){
			errorCount++;
			$.cookie('errorCount',errorCount,{path:'/'});
		}
		$("#answerError").text(errorCount+"题")
		/*	记录用户的错题
		*/	
		var errorSave=qid;
	if(cid>0 && flag){
		$.post("selfErrors/saveSelfErrors",{"cid":cid,"errorSave":errorSave},function(data){
			if(data){
				alert("加入到了错体表");
			}
		},"json");
		$(".choseP").removeAttr("onclick");
		}
	}
	rightCount=parseInt(rightCount);
	errorCount=parseInt(errorCount);
	if((rightCount+errorCount)!=0){
		rightRate=(100*rightCount/(rightCount+errorCount)).toFixed(0);
	}
	$("#rightRate").text(rightRate+"%");
	//把点击属性移除
	$(".choseP").removeAttr("onclick");

}

//点击收藏难题
var saveFlag;
function favorSave(){
	var cid=$("#cid").text();
	var qid=quiz.qid;
	if(cid>0){
		if(saveFlag){
			//点击收藏
			$.post("selfErrors/addfavorSave",{"cid":cid,"save":qid},function(data){
				if(data){
					showFavorSave(qid);
				}
			},"json");
		}else{
			//点击取消收藏
			$.post("selfErrors/removeFavorSave",{"cid":cid,"save":qid},function(data){
				if(data){
					alert("取消收藏成功！！！");
					showFavorSave(qid);
				}
			},"json");
		}
	}
}
//获取所有难题
function showFavorSave(qid){
	var cid=$("#cid").text();
	if(cid>0){
		$.post("selfErrors/getFavorSave",{"cid":cid},function(data){
			if(data!=null){
				var saves=data.save;
				if(saves!=null && saves.indexOf("@"+qid)!=-1){
					saveFlag=false;
					$("#favor-tag").css({"background-image":"url(images/fovor1.png)"});
				}else{
					saveFlag=true;//说明可以收藏
					$("#favor-tag").css({"background-image":"url(images/fovor.png)"});
				}
			}
		},"json");
	}
}