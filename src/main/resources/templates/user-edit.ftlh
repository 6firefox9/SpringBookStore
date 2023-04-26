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
<h2>Редактирование пользователя</h2>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" name="userId" value="${user.id}">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit">Сохранить</button>
</form>

<hr>
<a href="/">На главную</a>
</body>
</html>
