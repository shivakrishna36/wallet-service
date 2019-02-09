<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="details" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="create">
Enter the amount:<input type="number" name ="currentBalance">
<input type="submit" value="OK">
</form>
${message}


<a href ="updateBalance">Update Balance</a>

<a href ="statements">Get Statements</a>


<table>

	<tr>
		<th>transaction_id </th>	
		<th>amount </th>
		<th>transaction_date </th>
		<th>OrderId</th>
		<th>transaction_details </th>
		<th>transaction_type</th>
	</tr>
	
	<details:forEach var="account" items="${statements}">
	<tr>
		<td>${account.statementId}</td>
		<td>${account.amount}</td>
		<td>${account.dateTime}</td>
		<td>${account.orderId}</td>
		<td>${account.transactionRemarks}</td>
		<td>${account.transactionType}</td>
	</tr>
	</details:forEach>
	
</table>
</body>
</html>