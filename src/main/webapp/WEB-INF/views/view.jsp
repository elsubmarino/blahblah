<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="container-fluid imcontent">
	<div class="row">
		<div class="col-md-offset-2 col-md-1">
			<a href="#"><img src="" /></a>
		</div>
		<div class="col-md-3">
			<img src="" />
		</div>
		<div class="col-md-2">
			<div class="big-font">${shoe.title }</div>
			<div class="grey-tilted-font">상품카테고리</div>
			<div>
				<span>${shoe.price }</span> <span>평점</span>
			</div>
			<hr>
			<div>
				<a href="" class="btn btn-default"></a> <a href=""
					class="btn btn-default"></a> <a href="" class="btn btn-success"></a>
			</div>
		</div>
		<div class="bold">무료배송</div>
		<div class="col-md-offset-4"></div>
	</div>
	<div class="row">
		<div class="col-md-offset-2 col-md-6">
			<hr>
		</div>
	</div>
	<div class="row">
		<div class="col-md-offset-3 col-md-5">
			<div>당신이 좋아할 만한 신발</div>
			<div style="width: 225px;" class="button">
				<img src="${shoe.image }">
				<hr>
				<div class="text-left bold">${shoe.title }</div>
				<div class="text-left" style="margin-left: 10px;">${shoe.description }</div>
				<div class="text-left" style="margin-left: 10px;">${shoe.price }</div>
			</div>
		</div>

	</div>
	<div class="row">
		<div class="col-md-offset-2 col-md-6">
			<hr>
		</div>
	</div>
	<div class="row">
		<div class="col-md-offset-3 col-md-2">
			<img src="" />
		</div>
		<div class="col-md-4"></div>
		<div class="col-md-offset-3"></div>
	</div>
	<div class="row">
		<div class="col-md-offset-2 col-md-6">
			<hr>
		</div>
	</div>
	<div class="row">
		<!-- 여기서부터 평점 -->
	</div>
</div>