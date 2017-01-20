<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<div class="container-fluid">
	<div class="row">
		<div class="col-md-offset-4 col-md-4" style="margin-top:100px;">
			<form id="qnaRegisterForm" action="/qna/register_ok" method="POST">
				<input type="hidden" name="email" value="${sessionScope.me.email }">
				<div class="panel-group">
					<div class="panel panel-primary">
						<div class="panel-heading">글쓰기</div>
						<div class="panel-body">
							<div class="form-group">
								<label for="title">제목</label> <input name="title" id="title"
									type="text" class="form-control">
							</div>
							<div class="form-group">
								<label for="title">내용</label>
								<textarea name="content" id="content" class="form-control" rows="10"
									style="resize: none;"></textarea>
							</div>
						</div>
						<div class="panel-footer">
						
						<div class="form-group">
							<a class="btn btn-primary" id="qnaRegisterButton">글쓰기</a>
							<a class="btn btn-primary" onclick="javascript:location.replace('/qna')">취소</a>
						</div>
						</div>
					</div>
				</div>
			</form>

		</div>
		<div class="col-md-offset-4"></div>
	</div>
</div>