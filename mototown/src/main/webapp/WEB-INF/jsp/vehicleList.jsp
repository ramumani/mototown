<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Cars</a></li>
      <li><a href="#">SUVs</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h2>Striped Rows</h2>
  <p>The .table-striped class adds zebra-stripes to a table:</p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Brand</th>
        <th>Model name</th>
        <th>Year</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var = "vehicle" items="${rAllVehicles}">
      <tr>
        <td>${vehicle.id}</td>
        <td>${vehicle.brand}</td>
        <td>${vehicle.modelName}</td>
        <td>${vehicle.year}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>
