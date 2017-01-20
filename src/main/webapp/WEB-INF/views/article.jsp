<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-offset-4 col-md-4" style="margin-top: 100px;">
			<table class="table table-bordered">
				<thead>

				</thead>
				<tbody>
					<tr>
						<th class="well ">�۾���</th>
						<td>${qna.email }</td>
						<th class="well">��¥</th>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${qna.date }" /></td>
						<th class="well">��ȸ��</th>
						<td>${qna.hit }</td>
					</tr>
					<tr>
						<th class="well">����</th>
						<td colspan="6">${qna.title }</td>
					</tr>
					<tr>
						<td colspan="6" style="height: 400px;">${qna.content }</td>
					</tr>
				</tbody>
				<tfooter>
				<tr>
					<td colspan="6" class="text-right"><a href=""
						class="btn btn-success">�ڷΰ���</a> <c:if
							test="${qna.email eq sessionScope.me.email }">
							<a href="/qna/edit?num=${qna.num }" class="btn btn-primary">����</a>
							<a href="/qna/edit?delete=${qna.num }" class="btn btn-primary">����</a>
							
						</c:if></td>
				</tr>
				</tfooter>
			</table>
		</div>
		<div class="col-md-offset-4"></div>
	</div>
</div>