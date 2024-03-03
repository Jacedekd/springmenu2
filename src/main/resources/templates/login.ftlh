<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div class="container">
        <h4>Авторизация</h4>
        <form action="/login" method="post">
<#--            Эл. почта: <input type="email" name="username" value="admin@gmail.com"><br><br>-->
<#--            Пароль: <input type="password" name="password" value="123"><br><br>-->
            Эл. почта: <input type="email" name="username"><br><br>
            Пароль: <input type="password" name="password"><br><br>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Вход"/>
        </form>
        <a href="/registration">Зарегистрироваться</a>
        <#if errorMessage??>
            <h2 style="color: red">${errorMessage}</h2>
        </#if>
    </div>
</@t.template>