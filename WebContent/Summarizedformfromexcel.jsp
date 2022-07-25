<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("form").submit(function(event) {
			event.preventDefault();
			var formData = new FormData(this);
			$.ajax({
				url : "Uploadservlet",
				type : "POST",
				data : formData,
				success : function(data) {
					var row = data;
					for (i = 0; i < row.length; i++) {
						var column = row[i];
						var eachrow = "<tr>";
						for (j = 0; j < column.length; j++) {
							eachrow = eachrow + "<td>" + column[j] + "</td>";
						}
						eachrow = eachrow + "</td>";
						$('#tbody').append(eachrow);
					}
				},
				cache : false,
				contentType : false,
				processData : false
			});
		});
	});
</script>


</head>
<body>
	<form enctype="multipart/form-data" method="post">
		<input type="file" name="file"> 
		<input type="submit"  value="Submit">
		<table border="1px solid black">

			<tbody id="tbody"></tbody>
		</table>


	</form>
</body>
</html>
