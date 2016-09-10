function register() {
			if($("#span1").text()=="" && $("#span2").text()=="" && $("#span3").text()=="" && $("#span4").text()=="" ){
				if($("#cname").val()=="" || $("#cpwd").val()=="" || $("#checkpwd").val()=="" || $("#email").val()=="" ){
					alert("请按要求填写！");
					return false;
				}
				alert("注册成功，请前往邮箱激活后登录！");
				return true;
			} 
			alert("请按要求填写！");
			return false;
		}
		function checkcname(){
			if($("#cname").val().trim()==""){
				$("#span1").html("请输入用户名！");
				return;
			}
			$("#span1").html("");
			$.post("user/checkcname",{"cname":$("#cname").val().trim()},function(data){
					if(data.length>4){
						$("#span1").html("用户名已存在！");
					}else{
						$("#span1").html('<img src="images/1.gif" >');
					}
				}
				
			);
		}
		function checkEmail()//检查邮箱名是否正确
		{
			var emailValue = $("#email").val();
			if (!isEmail(emailValue)) {
				$("#span4").html("邮箱格式错误!");
				return;
			}
			$("#span4").html('<img src="images/1.gif" >');
		}
		function Pwd(){
			var pwd=$("#cpwd").val();
			if (!isPwd(pwd)){
				$("#span2").html("格式不正确！");
				return;
			}
			$("#span2").html('<img src="images/1.gif" >');
		}
		function checkPwd(){
			if($("#cpwd").val().trim()==""){
				$("#span3").html("请先输入密码！");
				return;
			}else if($("#span2").text()!=""){
				$("#span3").html("请先输入密码！");
				return;
			}else if($("#cpwd").val()!=$("#checkpwd").val()){
				$("#span3").html("输入不一致！");
				return;
			}else{
				$("#span3").html('<img src="images/1.gif" >');
				return;
			}	
		}
		//匹配邮箱的正则表达式
		function isEmail(str) {
			var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
			return reg.test(str);
		}
		//匹配密码格式的正则表达式
		function isPwd(str) {
			var reg = /^(\w){6,20}$/;
			return reg.test(str);
		}
		$(function(){
			$("#cname").val(""); 
			$("#cpwd").val(""); 
			$("#checkpwd").val("");
			$("#email").val("");
		});