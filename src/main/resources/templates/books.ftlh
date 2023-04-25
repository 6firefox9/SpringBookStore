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
<form action="/" method="get">
    Поиск по названию: <input type="text" name="title"> <br>
    <input type="submit" value="Поиск"/>
</form>
<#list books as book>
    <div>
        <p><b>${book.title}</b> ${book.price} | <a href="/book/${book.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Создать новую книгу</h3>
<form action="/book/create" method="post" enctype="multipart/form-data">
    Название: <input type="text" name="title"><br><br>
    Описание: <input type="text" name="description"><br><br>
    Цена: <input type="text" name="price"><br><br>
    Автор: <input type="text" name="author"><br><br>
    Год: <input type="text" name="year"><br><br>

    Фото 1: <input type="file" name="file1"><br><br>
    Фото 2: <input type="file" name="file2"><br><br>
    Фото 3: <input type="file" name="file3"><br><br>
    <input type="submit" value="Добавить книгу"/>
</form>

</body>
</html>
