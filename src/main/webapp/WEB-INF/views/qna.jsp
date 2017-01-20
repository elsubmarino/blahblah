<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="container-fluid">
	<div class="col-md-offset-2 col-md-8" style="margin-top: 100px">
		<div class="row">
			<a id="qnaRegister" class="btn btn-primary pull-right">글쓰기</a>
		</div>
		<div class="row">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th style="width: 5%" class="text-center">번호</th>
						<th style="width: 55%" class="text-center">제목</th>
						<th style="width: 20%" class="text-center">작성자</th>
						<th style="width: 10%" class="text-center">날짜</th>
						<th style="width: 10%" class="text-center">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${qna }">
						<tr style="cursor: pointer"
							onclick="javascript:location.replace('qna/article?num=${item.num}')">
							<td class="text-center">${item.num }</td>
							<td class="text-center">${item.title }</td>
							<td class="text-center">${item.email }</td>
							<td class="text-center"><fmt:formatDate pattern="yyyy-MM-dd"
									value="${item.date }"></fmt:formatDate></td>
							<td class="text-center">${item.hit }</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfooter>
				<tr>
					<td colspan="5">
						<div class="btn-group btn-inline "
							style="margin: 0 auto; width: 200px;; margin: 0 auto;">
							<c:forEach begin="1" end="${listNumEnd }" step="1" var="i">
								<c:choose>
								<c:when test="${i eq param.num}">
									<a href="/qna/list?num=${i }" class="btn btn-success">${i }</a>
								</c:when>
								<c:otherwise>
									<a href="/qna/list?num=${i }"  class="btn btn-default">${i }</a>
								</c:otherwise>
								</c:choose>
							</c:forEach>
						</div>
					</td>

				</tr>
				</tfooter>
			</table>
		</div>
	</div>
	<div class="col-md-offset-2"></div>
</div>