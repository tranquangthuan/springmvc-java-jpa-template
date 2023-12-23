<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page trimDirectiveWhitespaces="true"%>


<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.6.4.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<style>
.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}

table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 50%;
}

td {
	text-align: center;
}
</style>
<meta charset="ISO-8859-1">
<title>Product List</title>
</head>
<body>

	<div align="center">
		<a href="add">Add new Product</a> <a
			href="${pageContext.request.contextPath}">Home</a>
		<div>
			<form action="${pageContext.request.contextPath}/product/search"
				method="get">
				<input type="text" name="searchKey"> <input type="submit"
					value="Search">
			</form>
		</div>
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Quantity</th>
					<th>Ngay San Xuat</th>
					<th>Gio San Xuat</th>
					<th>Category</th>
					<th>Serial</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}" varStatus="status">
					<tr>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.quantity}</td>
						<td>${product.ngaySanXuat}</td>
						<td>${product.gioSanXuat}</td>
						<td>${product.category.name}</td>
						<td>${product.serial}</td>
						<td><a href="delete?id=${product.id}">Delete</a> <a
							href="update/${product.id}">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>