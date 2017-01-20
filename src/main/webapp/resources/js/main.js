var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; // 이메일
																									// 정규식
																									// 표현
var regExp2 = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/ // 패스워드 정규식 표현
var script = document.createElement('script');
script.src = '/resources/js/jquery-latest.js';
script.type = 'text/javascript';
script.charset = 'utf-8';
document.getElementsByTagName('head')[0].appendChild(script);
script = document.createElement('script');
script.src = '/resources/js/bootstrap.js';
script.type = 'text/javascript';
script.charset = 'utf-8';
document.getElementsByTagName('head')[0].appendChild(script);


$(function() {
	// 글 읽기

	// 로그인 인증
	$("#loginButton").click(function() {
		var email = $("#loginEmail").val();
		var pwd = $("#loginPwd").val();
		if (!email) {
			alert("이메일을 입력하세요!");
			returnl
		} else if (email.match(regExp) == null) {
			alert("이메일을 제대로 입력하세요!");
			return;
		}
		if (!pwd) {
			alert("패스워드를 입력하세요!");
			return;
		}
		$.ajax({
			url : "/member/login",
			type : "POST",
			data : $("#loginForm").serialize(),
			success : function(result) {
				if (result == "fail") {
					alert("이메일 주소 혹은 아이디를 제대로 입력하세요!");
					$("#loginEmail").focus();
				} else if (result == "success") {
					$("#login .close").click();
					$("#loginEmail").val("");
					$("#loginPwd").val("");
					location.reload();
				}
				$("#loginEmail").val('');
				$("#loginPwd").val('');
			},
			error : function(request, status, err) {
				alert(request + ' ' + status + ' ' + err);
			}
		})

	});

	// 회원가입 인증
	$("#registerButton").click(function() {
		var email = $("#joinEmail").val();
		var pwd1 = $("#joinPwd1").val();
		var pwd2 = $("#joinPwd2").val();
		if (!email) {
			alert("이메일을 입력하세요!");
			return;
		} else if (email.match(regExp) == null) {
			alert("이메일을 제대로 입력하세요!");
			return;
		}

		if (!pwd1 || !pwd2) {
			alert("패스워드를 입력하세요!");
			return;
		}
		if (pwd1 !== pwd2) {
			alert("패스워드가 일치하지 않습니다!");
			return;
		}
		if (password.match(regExp2) == null) {
			alert("패스워는 6글자에서 20글자\n최소 1개의 숫자 혹은 특수문자를 포함해야 합니다.");
			return;
		}
		var params = $("#joinForm").serialize();
		$.ajax({
			url : '/member/join',
			type : 'POST',
			data : params,
			success : function(result) {
				if (result == "fail") {
					alert("중복된 이메일 주소입니다.");
					$("#joinEmail").focus();
				} else {
					alert("가입을 환영합니다!");
					$("#join .close").click();
				}
				$("#joinEmail").val("");
				$("#joinPwd1").val("");
				$("#joinPwd2").val("");
			},
			error : function(request, status, err) {
				alert(request + ' ' + status + ' ' + err);
			}
		});
	});

	$("#buttons .button:eq(1)").click(function() {
		$("#register").hide();
	});

	$("#join").click(function() {
		$("#register").show();
	});

	$("#login").click(function() {
		$("#log").show();
	});

	$("#login_cancel").click(function() {
		$("#log").hide();
	});

	$("#rightArrow").click(function() {
		$("#centerBanner ul li").animate({
			right : "400px"
		}, "fast");
	});

	$("#men").mouseenter(function() {
		$(".submenu").show();
		$("#men").css("border-bottom", "1px solid black");
	});
	$("#subsubmenu, #submenu").mouseleave(function() {
		$(".submenu").hide();
	});
	/*
	 * $(".submenu").mouseout(function(){ $(this).hide(); })
	 */

	$("#men").click(function() {
		$(location).attr("href", "/men");
	});

	$("#qnaRegister").click(function() {
		$.ajax({
			url : '/qna/validation',
			type : 'GET',
			success : function(result) {
				if (result == "fail") {
					alert("로그인을 해야 이용할 수 있습니다!");
				} else if (result == "success") {
					location.replace("/qna/register");
				}
			},
			error : function(status, request, attr) {
				alert(status + ' ' + request + ' ' + attr);
			}
		});

	});
	$("#qnaRegisterButton").click(function() {
		var title = $("#qnaRegisterForm #title").val();
		var content = $("#qnaRegisterForm #content").val();
		if (!title) {
			alert("제목을 입력하세요!");
			$("#title").focus();
			return;
		}
		if (!content) {
			alert("내용을 입력하세요!");
			$("#contentcontent").focus();
			return;
		}
		$("#qnaRegisterForm").submit();
	});

	$("#search").on("click", function() {
		$(this).animate({
			width : "200px"
		}, 500);
	}).on("focusout", function() {
		$(this).animate({
			width : "60%"
		}, 500);
	})

})
