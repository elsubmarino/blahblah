<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<div class="container-fluid imcontent">
	&nbsp;
	<div class="row">
		<div class="col-md-offset-2 col-md-2">
			<ul style="margin-left: 50px" class="left-menu">
				<li>성별</li>
				<li><a>남성</a></li>
				<li><a>여성</a></li>
				<li><a>남아</a></li>
				<li><a>여아</a></li>
			</ul>
		</div>
		<div class="col-md-7 text-left">
			<div class="row">
				<div>
					<spaan class="less-big-font" style="letter-spacing: -2.5px;">모든 상품</spaan>
					<span
						style="display: inline-block; font-size: inherit; color: grey; margin-top: -20px;">(111)</span>
					<div class="dropdown pull-right">
							<a class="dropdown-toggle btn btn-default" data-toggle="dropdown"
								style="font-weight: 900; letter-spacing: -0.5;  font-family: 'Malgun Gothic'">정렬<span
								style="margin-right: 10px;"> :</span><span class="caret"></span></a>
						<ul class="dropdown-menu" class="left-menu"
							style="padding: 15px 0">
							<li><a href="">최신순</a></li>
							<li><a href="">가격순</a></li>

						</ul>
						</div>
				</div>
				<c:forEach items="${shoes }" var="shoe" varStatus="status">
					<c:if test="${status.index % 4 eq 0 }">
						<div>
					</c:if>
					<div style="width: 225px;" class="button itemButton" onclick="javascript:location.replace('/view?num=${shoe.product_id}')">
						<a class="btn btn-default"
							style="border: 0; margin: 30px 0; box-sizing: content-box"
							class="hovering"> <img src="${shoe.image }">
							<hr>
							<div class="text-left bold">${shoe.title }</div>
							<div class="text-left" style="margin-left: 10px;">${shoe.description }</div>
							<div class="text-left" style="margin-left: 10px;">${shoe.price }</div>
						</a>
						<c:if test="${status.index % 4 eq 0 }">
					</div>
					</c:if>
				</c:forEach>



			</div>
		</div>
	</div>
	
	<div class="col-md-offset-3"></div>
</div>
</div>