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
<h4>Книги пользователя ${user.name}:</h4>
<#list books as book>
    <div>
        <p><b>${book.title}</b> ${book.price} | <a href="/book/${book.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Ничего нет</h3>
</#list>


<hr>
<a href="/">На главную</a>
</body>
</html>
