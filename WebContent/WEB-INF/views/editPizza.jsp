<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Pizza</title>
<style type="text/css">
.error {
	color: #212121;
	font-style: italic;
}

.mainTable {
	border-style: inset;
	font-size: large;
	margin-top: 130px;
	background-color: white;
	width: 30%;
}
</style>
<%-- <script type="text/javascript">
	$(document).ready(function() { 
		$('a.link').click(function() {
			var url1 = $(this).attr('href');
			$('#editToppingDiv').load(url1);
			return false;
		});
	});
</script> --%>
</head>
<body>

	<s:url var="pizza" value="pizza/edit/{productID}"></s:url>
	<input type="hidden" value="${pizza}" id="toppingvar3" />

	<div id="formDiv" align="justify">
		<c:if test="${!empty pizzaList}">
			<table class="mainTable" cellpadding="5" cellspacing="5">
				<tr>
					<td>
						<h3 style="color: orange; text-align: center; size: 20px;">Pizzas
							Are -:</h3></td>
				</tr>
				<tr>
					<th align="left" bgcolor="#565656">Name</th>
				</tr>
				<c:forEach items="${pizzaList}" var="pizza">
					<tr>
						<td><a class="link" href="pizza/edit/${pizza.productID}">${pizza.productName}</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<div id="editToppingDiv"></div>
</body>
</html>