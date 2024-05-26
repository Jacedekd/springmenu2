<#import "blocks/templateLogin.ftlh" as t>
<#--<@t.template user>-->
<#--    <div class="container">-->
<#--        <h4>Регистрация</h4>-->
<#--        <form action="/registration" method="post">-->
<#--            Имя пользователя: <input type="text" name="name"><br><br>-->
<#--            Эл. почта: <input type="email" name="email"><br><br>-->
<#--            Номер телефона: <input type="text" name="numberPhone"><br><br>-->
<#--            Пароль: <input type="password" name="password"><br><br>-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--            <input type="submit" value="Зарегистрироваться"/>-->
<#--        </form>-->
<#--        <a href="/login">Войти</a>-->
<#--        <#if errorMessage??>-->
<#--            <h2 style="color: red">${errorMessage}</h2>-->
<#--        </#if>-->
<#--    </div>-->
<#--</@t.template>-->

<@t.template user>



    <div class="container-login100">
        <div class="wrap-login100">


            <form class="login100-form validate-form" action="/registration" method="post">
					<span class="login100-form-title" style="font-weight: bold;">
                        User Registration
					</span>

                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <input class="input100" type="text" name="name" placeholder="Name">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <input class="input100" type="email" name="email" placeholder="Email">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <input class="input100" type="text" name="numberPhone" placeholder="Phone">
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
                        Registration
                    </button>
                </div>

                <div class="text-center p-t-12">
                    <a class="txt2" href="/login">
                        Already have an account?
<#--                        <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>-->
                    </a>
                </div>


                <input type="hidden" name="_csrf" value="${_csrf.token}">
            </form>

            <div class="login100-pic js-tilt loginImg" data-tilt style="display: flex; align-items: center">
                <img src="/static/images/img-01.png" alt="IMG">
            </div>
        </div>
    </div>


</@t.template>