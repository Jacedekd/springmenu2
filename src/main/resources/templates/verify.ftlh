<#import "blocks/templateLogin.ftlh" as t>
<@t.template user>


<<<<<<< HEAD
<h2>Подтверждение Email</h2>
<form action="/verify" method="post">
    <input type="hidden" name="email" value="${email}">
    <label for="code">Код подтверждения:</label>
    <input type="text" id="code" name="code">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button type="submit">Подтвердить</button>
</form>
<div>
=======
>>>>>>> main
    <#if errorMessage??>
        <span style="color:#5b0a0a;">${errorMessage}</span>
    </#if>
</div>

<<<<<<< HEAD
=======
    <div class="container-login">
        <div class="login-main-box">
            <div class="login-box">
                <div class="login-header">
                    <div class="login-logo-box">
                        <img src="/static/images/logo_aiu.png">
                        ALA-TOO
                    </div>
                    <div class="login-language"></div>
                </div>
                <div class="login-body">
                    <div class="login-Title">Сonfirm the email</div>
                    <div class="login-Description">Welcome to Ala-Too menu web-site</div>
<#--                    <form action="/login" method="post">-->
<#--                        <input type="email" name="username" placeholder="Email">-->
<#--                        <input type="password" name="password" placeholder="Password">-->
<#--                        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                        <button type="submit">Login</button>-->
<#--                        <p>Don’t have an account? <a style="color: #e81c1c" href="/registration">Registration</a> </p>-->
<#--                        <#if errorMessage??>-->
<#--                            <h2 style="color: red">${errorMessage}</h2>-->
<#--                        </#if>-->
<#--                    </form>-->
                    <form action="/verify" method="post">
                        <input type="hidden" name="email" value="${email}">
                        <label for="code">Код подтверждения:</label>
                        <input type="text" id="code" name="code">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <button type="submit">Подтвердить</button>
                    </form>
                </div>
            </div>
            <img class="loginImg" src="https://i.pinimg.com/736x/fb/7e/e3/fb7ee33d1344072ab41701860b73ca99.jpg"/>

        </div>
    </div>

>>>>>>> main
</@t.template>