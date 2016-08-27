$(function(){
//	var input = document.getElementById("loginBox").getElementsByTagName("input");
	
	$("#loginBox input").focus(function(){
		this.className += " input-text-over";
	});
	
	$("#loginBox input").blur(function(){
		this.className = this.className.replace(/input-text-over/, "");
	});
	
	$("#loginBox button").hover(function(){
		$(this).addClass("input-button-over");
	},function(){
		$(this).removeClass("input-button-over");
	});
	
	
	
});
