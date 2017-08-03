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
		
		<h3>Detalhes do Cartorio: ${cartorio.nome }</h3>
		<table class="table">
			<thead>
				<tr>
					<th>ID:</th>
					<th>Nome:</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td c>${cartorio.id }</td>
					<td>${cartorio.nome }</td>
				</tr>
			</tbody>
		</table>
		
</body>
</html>