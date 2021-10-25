<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Email using FreeMarker</title>
</head>
<body>
<div style="margin-top: 10px">List product quantity < 10</div>
<br/>
<table border = "1">
    <thead>
    <tr>
        <th>Code</th>
        <th>Name</th>
        <th>Quantity</th>
        <th>Category Name</th>
    </tr>
    </thead>
    <tbody>
    <#list proReponseList as item>
        <tr>
            <td>${item.code}</td>
            <td>${item.name}</td>
            <td>${item.quantity}</td>
            <td>${item.category.name}</td>
        </tr>
    </#list>
    </tbody>
</table>

 <div><b>Time:</b> ${time}</div>
</body>
</html>