<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
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
		<a href="add">Add new Category</a> <a
			href="${pageContext.request.contextPath}">Home</a>
		<table>
			<thead>
				<tr>
					<th>Category ID</th>
					<th>Category Name</th>
					<th>Product Name</th>
					<th>Product ngaySanXuat</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="c" items="${list}" varStatus="status">
					<tr>
						<td>${c.categoryId}</td>
						<td>${c.categoryName}</td>
						<td>${c.productName}</td>
						<td>${c.ngaySanXuat}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>