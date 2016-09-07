function show() {
			$("#cname").val("");
			$("#cpwd").val("");
			$("#verify").val("");
			changeimg();
			$("#bsCss").attr("href", "bootstrap-3.3.7/css/bootstrap.min.css");
			$("#navUl li").css("width", "98px");
			$("#navUl").css("height", "70px");
			$('#myModal').modal({
				keyboard : true,
				show : true,//设置模式窗关闭
				backdrop : 'static',
			});

			$('#myModal').on('hide.bs.modal', function() {
				$("#bsCss").attr("href", "");
			});
		}
		function login() {
			if ($("#cname").val().trim() == "" || $("#cpwd").val().trim() == "") {
				$("#errormsg").html("账号或密码不能为空！");
				return false;
			} else  if($("#verify").val().trim()==""){
				$("#errormsg").html("请输入验证码！");
				return false;
			}else if($("#errormsg").text()!=""){
				
				return false;
			}else{
				$.post("login/login",{"cname":$("#cname").val().trim(),"cpwd":$("#cpwd").val().trim()},function(data){
					if(!data){
						$("#errormsg").html("账号或密码错误！");
						show();
						console.info(data+"登录失败");
						return false;
					}else{
						console.info(data+"登录成功");
						location.href="index.jsp";
						return false;
					}
				});
				return false;
			}
		}
		function changeimg() {
			$('#signcode').attr('src', 'signcode/authcode?abc=' + Math.random());//链接后添加Math.random，确保每次产生新的验证码，避免缓存问题。\
		}
		function checkverify(){
			if($("#verify").val().trim()==""){
				$("#errormsg").html("请输入验证码！");
				return false;
			}else{
			$.post("login/checkverify",{"verify":$("#verify").val()},function(data){
				if(data.length>4){
					$("#errormsg").html("验证码输入有误！");
					changeimg();
				}else{
					$("#errormsg").html("");
				}
			});
			}
		}