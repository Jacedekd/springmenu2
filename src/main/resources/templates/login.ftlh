<#import "blocks/templateLogin.ftlh" as t>
<@t.template user! {}>

<#--    <div class="container">-->
<#--        <h4>Авторизация</h4>-->
<#--        <form action="/login" method="post">-->
<#--            Эл. почта: <input type="email" name="username" value="admin@gmail.com"><br><br>-->
<#--            Пароль: <input type="password" name="password" value="123"><br><br>-->
<#--            &lt;#&ndash;            Эл. почта: <input type="email" name="username"><br><br>&ndash;&gt;-->
<#--            &lt;#&ndash;            Пароль: <input type="password" name="password"><br><br>&ndash;&gt;-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--            <input type="submit" value="Вход"/>-->
<#--        </form>-->
<#--        <a href="/registration">Зарегистрироваться</a>-->
<#--        <#if errorMessage??>-->
<#--            <h2 style="color: red">${errorMessage}</h2>-->
<#--        </#if>-->
<#--    </div>-->

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
                    <div class="login-Title">Welcome menu</div>
                    <div class="login-Description">Welcome to Ala-Too menu web-site</div>
                    <form action="/login" method="post">
                        <input type="email" name="username" placeholder="Email">
                        <input type="password" name="password" placeholder="Password">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit">Login</button>
                        <p>Don’t have an account? <a style="color: #e81c1c" href="/registration">Registration</a> </p>
                        <#if errorMessage??>
                            <h2 style="color: red">${errorMessage}</h2>
                        </#if>
                    </form>
                </div>
            </div>
            <img class="loginImg" src="https://i.pinimg.com/736x/fb/7e/e3/fb7ee33d1344072ab41701860b73ca99.jpg"/>

        </div>
    </div>


</@t.template>