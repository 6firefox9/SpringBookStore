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
<h2>Панель администратора</h2>

<table border="1">
        <tr">
            <th>Email</th>
            <th>Имя</th>
            <th>Активность</th>
            <th>Роль</th>
            <th>Бан</th>
            <th>Подробнее</th>
        </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.name}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Бан">
                </form>
            </th>
            <th><a href="admin/user/edit/${user.id}">Редактировать</a></th>
            <th><a href="/user/${user.id}">Подробнее</a></th>
        </tr>
    <#else>
        <h3>Нет пользователей</h3>
    </#list>
</table>

<hr>
<a href="/">На главную</a>
</body>
</html>
