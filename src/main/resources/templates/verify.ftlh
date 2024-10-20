<#import "blocks/templateLogin.ftlh" as t>
<@t.template user>


<h2>Подтверждение Email</h2>
<form action="/verify" method="post">
    <input type="hidden" name="email" value="${email}">
    <label for="code">Код подтверждения:</label>
    <input type="text" id="code" name="code">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button type="submit">Подтвердить</button>
</form>
<div>
    <#if errorMessage??>
        <span style="color:#5b0a0a;">${errorMessage}</span>
    </#if>
</div>

</@t.template>