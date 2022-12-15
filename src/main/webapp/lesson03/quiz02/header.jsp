<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- logo -->
<div class="p-0 col-2 d-flex align-items-center justify-content-left">
	<h2 class="m-0">
		<a class="text-success" href="list_template.jsp">Melong</a>
	</h2>
</div>
<!-- search -->
<div class="col-10 d-flex align-items-center">
	<form method="get" action="/lesson03/quiz02/detail.jsp?search=search" class="col-6">
		<div class="input-group d-flex align-items-center">		
			<input type="text" class="form-control ml-4" name="search" value="<%=request.getParameter("search") %>">
			<div class="input-group-append">
				<button type="submit" class="btn btn-info">검색</button>
			</div>		
		</div>
	</form>		
</div>