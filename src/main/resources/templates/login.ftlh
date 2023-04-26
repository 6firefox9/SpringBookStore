<!DOCTYPE html>
<html lang="ru">
<head>
    <!-- HTML Codes by Quackit.com -->
    <title>Книжный магазин "Spring" | Вход</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="BookStore">
    <style>
        body {background-color:#ffffff;background-repeat:no-repeat;background-position:top left;background-attachment:fixed;}
        h1{font-family:Arial, sans-serif;color:#000000;background-color:#ffffff;}
        p {font-family:Georgia, serif;font-size:14px;font-style:normal;font-weight:normal;color:#000000;background-color:#ffffff;}
    </style>
</head>
<body>
<h1>Книжный магазин "Spring" | Вход</h1><hr>
<h4>Авторизация</h4>
<form action="/login" method="post">
    E-mail: <input type="email" name="username"/>
    Пароль: <input type="password" name="password"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
<a href="/registration">Зарегистрироваться</a>


<hr>
<a href="/">На главную</a>
</body>
</html>
