<#import "blocks/templateLogin.ftlh" as t>
<@t.template user>
<#--    <div class="container">-->
<#--        <h4>Авторизация</h4>-->
<#--        <form action="/login" method="post">-->
<#--            Эл. почта: <input type="email" name="username" value="admin@gmail.com"><br><br>-->
<#--            Пароль: <input type="password" name="password" value="123"><br><br>-->
<#--&lt;#&ndash;            Эл. почта: <input type="email" name="username"><br><br>&ndash;&gt;-->
<#--&lt;#&ndash;            Пароль: <input type="password" name="password"><br><br>&ndash;&gt;-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--            <input type="submit" value="Вход"/>-->
<#--        </form>-->
<#--        <a href="/registration">Зарегистрироваться</a>-->
<#--        <#if errorMessage??>-->
<#--            <h2 style="color: red">${errorMessage}</h2>-->
<#--        </#if>-->
<#--    </div>-->


    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt loginImg" data-tilt style="display: flex; align-items: center">
                <img src="/static/images/img-01.png" alt="IMG">
            </div>

            <form class="login100-form validate-form" action="/login" method="post">
					<span class="login100-form-title" style="font-weight: bold;">
						User Login
					</span>

                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <input class="input100" type="email" name="username" placeholder="Email">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate = "Password is required">
                    <input class="input100" type="password" name="password" placeholder="Password">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" type="submit">
                        Login
                    </button>
                </div>

                <div class="text-center p-t-12">
                    <a class="txt2" href="/registration">
                        Create your Account
<#--                        <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>-->
                    </a>
                </div>

                <input type="hidden" name="_csrf" value="${_csrf.token}">
            </form>
        </div>
    </div>


</@t.template>