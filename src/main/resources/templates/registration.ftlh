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

<<<<<<< HEAD
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
=======
<@t.template user! {}>



<#--    <div class="container-login100">-->
<#--        <div class="wrap-login100">-->


<#--            <form class="login100-form validate-form" action="/registration" method="post">-->
<#--					<span class="login100-form-title" style="font-weight: bold;">-->
<#--                        User Registration-->
<#--					</span>-->

<#--                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">-->
<#--                    <input class="input100" type="text" name="name" placeholder="Name">-->
<#--                    <span class="focus-input100"></span>-->
<#--                    <span class="symbol-input100">-->
<#--							<i class="fa fa-envelope" aria-hidden="true"></i>-->
<#--						</span>-->
<#--                </div>-->

<#--                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">-->
<#--                    <input class="input100" type="email" name="email" placeholder="Email">-->
<#--                    <span class="focus-input100"></span>-->
<#--                    <span class="symbol-input100">-->
<#--							<i class="fa fa-envelope" aria-hidden="true"></i>-->
<#--						</span>-->
<#--                </div>-->

<#--                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">-->
<#--                    <input class="input100" type="text" name="numberPhone" placeholder="Phone">-->
<#--                    <span class="focus-input100"></span>-->
<#--                    <span class="symbol-input100">-->
<#--							<i class="fa fa-envelope" aria-hidden="true"></i>-->
<#--						</span>-->
<#--                </div>-->

<#--                <div class="wrap-input100 validate-input" data-validate = "Password is required">-->
<#--                    <input class="input100" type="password" name="password" placeholder="Password">-->
<#--                    <span class="focus-input100"></span>-->
<#--                    <span class="symbol-input100">-->
<#--							<i class="fa fa-lock" aria-hidden="true"></i>-->
<#--						</span>-->
<#--                </div>-->

<#--                <div class="container-login100-form-btn">-->
<#--                    <button class="login100-form-btn" type="submit">-->
<#--                        Registration-->
<#--                    </button>-->
<#--                </div>-->

<#--                <div class="text-center p-t-12">-->
<#--                    <a class="txt2" href="/login">-->
<#--                        Already have an account?-->
<#--                    </a>-->
<#--                </div>-->


<#--                <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--            </form>-->

<#--            <div class="login100-pic js-tilt loginImg" data-tilt style="display: flex; align-items: center">-->
<#--                <img src="/static/images/img-01.png" alt="IMG">-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->

    <div class="container-login">
        <div class="login-main-box">
            <img class="loginImgR" src="https://i.pinimg.com/736x/fb/7e/e3/fb7ee33d1344072ab41701860b73ca99.jpg"/>
            <div class="login-box">
                <div class="login-header login-headerR">
                    <div class="login-logo-box">
                        <img src="/static/images/logo_aiu.png">
                        ALA-TOO
                    </div>
                    <div class="login-language"></div>
                </div>
                <div class="login-body">
                    <div class="login-Title">Welcome menu</div>
                    <div class="login-Description">Welcome to Ala-Too menu web-site</div>
                    <form action="/registration" method="post">
                        <input class="input100" type="text" name="name" placeholder="Name">
                        <input class="input100" type="text" name="numberPhone" placeholder="Phone">
                        <input type="email" name="email" placeholder="Email">
                        <input type="password" name="password" placeholder="Password">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit">Registration</button>
                        <p>Don’t have an account? <a style="color: #e81c1c" href="/login">Login</a> </p>
                        <#if errorMessage??>
<#--                            <h2 style="color: red">${errorMessage}</h2>-->
                            <div class="popup-error" id="emailExists">${errorMessage}</div>
                        </#if>
                    </form>
                </div>
>>>>>>> main
            </div>
        </div>
    </div>


</@t.template>