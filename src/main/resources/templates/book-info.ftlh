<!DOCTYPE html>
<html lang="ru">
<head>
    <!-- HTML Codes by Quackit.com -->
    <title>Книжный магазин "Spring"</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="BookStore">
    <style>
        body {background-color:#ffffff;background-repeat:no-repeat;background-position:top left;background-attachment:fixed;}
        h1{font-family:Arial, sans-serif;color:#000000;background-color:#ffffff;}
        p {font-family:Georgia, serif;font-size:14px;font-style:normal;font-weight:normal;color:#000000;background-color:#ffffff;}
    </style>
</head>
<body>

<h1>Книжный магазин "Spring"</h1><hr>
<h4>Подробнее о книге</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Название: </b> ${book.title}<br>
<b>Описание: </b> ${book.description}<br>
<b>Цена: </b> ${book.price}<br>
<b>Автор: </b> ${book.author}<br>
<b>Год: </b> ${book.year}<br>
<hr>
<h3>Удалить книгу</h3>
<form action="/book/delete/${book.id}" method="post">
    <input type="submit" value="Удалить книгу"/>
</form>

</body>
</html>
