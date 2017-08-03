<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cartorio com você</title>
<c:url value="/" var="contextPath" />
<link href="${contextPath}resources/css/Style.css" rel="stylesheet"
	type="text/css" />
<link href="${contextPath}resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${s:mvcUrl('CC#home').build() }">CARTORIOS.COM.VC</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${s:mvcUrl('CC#home').build() }"> Home <span
							class="sr-only">(current)</span></a></li>
				</ul>
			</div>
		</div>
		</nav>
		<form action="${s:mvcUrl('CC#create').build() }" method="POST" class="form">
			<fieldset>
				<legend style="text-align: center;">cadastre-se agora mesmo</legend>
				<div class="form-group">
					<label class="control-label" for="nome">Cartorio:</label> <input
						name="nome" type="text"
						placeholder="nome do cartorio aqui" class="form-control"
						required="">
				</div>
				<button type="submit" name="confirma" class="btn btn-primary">confirmar</button>
			</fieldset>
		</form>
		<div>
			<fieldset>
				<legend style="text-align: center;">Cartorios</legend>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ID:</th>
							<th>Nome Cartorio:</th>
						</tr>
					</thead>
					<c:forEach items="${cartorios}" var="cartorio">
						<tbody>
							<tr>
								<td>${cartorio.id }</td>
								<td><a href="${s:mvcUrl('CC#detalhes').arg(0,cartorio.id).build() }">${cartorio.nome }</a></td>
								<form action="<c:url value='/delete' />" method="POST">
									<input type="hidden" name="id" value="${cartorio.id }">
									<td><button style="float: right;" type="submit" class="btn btn-default">excluir</button></td>
								</form>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</fieldset>
		</div>
	</div>
</body>
</html>





















