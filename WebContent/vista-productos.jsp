<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>JSP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Contenido -->
	<div class="container" id="contenedor-principal">
		<h2>Productos</h2>
		<div class="row ">
			<c:forEach var="producto" items="${productosTienda}">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div>
						<img src="<c:out value="${producto.imagen}"/>" />
						<div>
							<c:out value="${producto.nombre}" />
						</div>
						<a
							href="incluirEnCarrito?producto=<c:out value="${producto.nombre}"/>"
							class="btn btn-default"> <c:out value="${producto.precio}" />
							€
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>