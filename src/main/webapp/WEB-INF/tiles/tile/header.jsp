<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>
<body>

	<div class="container-fluid" style="position:fixed;z-index:99999999;" id="marginTopHeader">
	
		<div class="row">
			<c:choose>
				<c:when
					test="${sessionScope.me!=null  and sessionScope.me.email eq 'admin@ulala.com'  }">
					<nav class="navbar navbar-default " style="margin: 0;">
						<div class="container-fluid">
							<ul class="nav navbar-nav">
								<li><a href="/">홈</a></li>
								<li><a href="/shoes/register">상품등록</a></li>
							</ul>

							<ul class="nav navbar-nav navbar-right">
								<li><a href="/member/logout">로그아웃</a></li>
							</ul>
						</div>
					</nav>
				</c:when>
				<c:otherwise>
					<nav class="navbar navbar-default " style="margin: 0;">
						<div class="container-fluid">
							<ul class="nav navbar-nav">
								<li><a href="/">홈</a></li>
								<li><a href="/intro">울랄라 소개</a></li>
								<li><a href="/qna/list?num=1">Q &amp; A</a></li>
							</ul>

							<ul class="nav navbar-nav navbar-right">
								<c:choose>
									<c:when test="${sessionScope.me ==null }">
										<li><a data-toggle="modal" data-target="#login"
											style="cursor: pointer">로그인</a></li>
										<li><a data-toggle="modal" data-target="#join"
											style="cursor: pointer">회원가입</a></li>
										<li><a href="/help">도움말</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="/member/logout">로그아웃</a></li>
										<li><a href="/help">도움말</a></li>
										<li><a href="/member/cart"><span
												class="glyphicon glyphicon-shopping-cart"></span></a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</nav>
				</c:otherwise>
			</c:choose>
		</div>
		<div>
			<div class="row" id="subsubmenu" style="background-color:white;">
				<div>
					<div
						class="col-md-offset-4 col-md-1 text-center medium-bold mainNavItems"
						id="men">남성</div>

					<div id="female" class="col-md-1  text-center medium-bold mainNavItems">여성</div>
					<div id="boy" class="col-md-1  text-center medium-bold mainNavItems">남아</div>
					<div id="girl" class="col-md-1  text-center medium-bold mainNavItems">여아</div>
					<div class="col-md-2 pull-right">
						<form action="/search" method="GET" id="searchForm">
							<div class="input-group" style="width: 100%">
								<input type="search" class="form-control pull-right"
									placeholder="검색" name="title" id="search" style="width: 60%">
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
						</form>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="submenu"
					style="clear: both; border-top: 1px solid #E5E5E5">
					<div class="sub-wrapper">
						<div class="sub-left">신상품</div>
						<div class="sub-center">
							<div class="medium-bold">신발</div>
							<ul>
								<li>모든 신발</li>
								<li>러닝화</li>
								<li>트레이닝화</li>
								<li>농구</li>
								<li>축구</li>
								<li>야구</li>
								<li>골프</li>
								<li>부츠</li>
							</ul>

						</div>
						<div class="sub-right">
							<div class="medium-bold">브랜드별</div>
							<ul>
								<li>월드컵</li>
								<li>컨버스</li>
								<li>뉴발란스</li>
								<li>처치스</li>
								<li>카파</li>
								<li>헌거</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>



	<!-- 경고창 모달 -->
	<div class="modal fade" id="alert" role="dialog" style="z-index: 2000">
		<div class="modal-dialog"
			style="z-index: 2000; background-color: red; color: white;">
			<div class="modal-header">
				<button type="button" class="close" style="color: white;"
					data-dismiss="modal">&times</button>
				<h4 class="modal-title	">경고</h4>
			</div>
			<div class="modal-body">
				<span id="alertContent"></span>
			</div>
		</div>
	</div>

	<!-- 로그인 모달 -->
	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">로그인</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row">
							<form id="loginForm">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="glyphicon glyphicon-envelope"></i>
									</span> <input type="email" name="email" id="loginEmail"
										placeholder="이메일" class="form-control" maxlength="20" />
								</div>
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="glyphicon glyphicon-lock"></i>

									</span> <input type="password" maxlength="20" name="password"
										id="loginPwd" placeholder="암호" class="form-control" />
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="loginButton">로그인</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>

		</div>
	</div>

	<!-- 회원가입 모달 -->
	<div class="modal fade" id="join" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">회원가입</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row">
							<form id="joinForm">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="glyphicon glyphicon-envelope"></i>
									</span> <input type="email" name="email" id="joinEmail"
										placeholder="이메일" maxlength="20" class="form-control" />
								</div>
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="glyphicon glyphicon-lock"></i>

									</span> <input type="password" maxlength="20" name="password"
										id="joinPwd1" placeholder="암호" class="form-control" />
								</div>
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="glyphicon glyphicon-lock"></i>

									</span> <input type="password" id="joinPwd2" maxlength="20"
										placeholder="암호확인" class="form-control" />
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="registerButton">회원가입</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>

		</div>
	</div>