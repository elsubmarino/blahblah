<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-offset-4 col-md-4">
			<form id="qnaRegisterForm">
				<div class="panel-group">
					<div class="panel panel-primary">
						<div class="panel-heading">�۾���</div>
						<div class="panel-body">
							<div class="form-group">
								<label for="title">����</label> <input name="title" id="title"
									type="text" class="form-control">
							</div>
							<div class="form-group">
								<label for="title">����</label>
								<textarea name="content" id="content" class="form-control" rows="10"
									style="resize: none;"></textarea>
							</div>
						</div>
						<div class="panel-footer">
						
						<div class="form-group">
							<a class="btn btn-primary" id="qnaRegisterButton">�۾���</a>
							<a class="btn btn-primary" onclick="javascript:location.replace('/qna')">���</a>
						</div>
						</div>
					</div>
				</div>
			</form>

		</div>
		<div class="col-md-offset-4"></div>
	</div>
</div>