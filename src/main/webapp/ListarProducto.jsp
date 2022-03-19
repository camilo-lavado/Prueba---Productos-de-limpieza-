<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Productos</title>
</head>
<body>
<h1>Listar Productos</h1>
<table>
<tr>
	<th>Nombre</th>
	<th>Precio</th>
	<th>Descripcion</th>
	<th>Categoria</th>
	<th>Acciones</th>
</tr>

<c:forEach items = "${productos}" var = "producto">
	<tr>
		<td>${producto.getProducto().getnombreProducto()}</td>
		<td>${producto.getProducto().getprecioProducto()}</td>
		<td>${producto.getProducto().getdescripcionProducto()}</td>
		<td>${producto.getCategoria().getnombreCategoria()}</td>
		<td>
		<a href="/ModificarProducto.jsp?id_producto=${producto.getProducto().getId()}">Modificar Producto</a>&nbsp;
		<a href="/EliminarProducto.jsp?id_producto=${producto.getProducto().getId()}">Eliminar Producto</a>
		</td>
		
	</tr>
</c:forEach>


</table>
<a href="/">Volver al inicio</a>

</body>
</html>