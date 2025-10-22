<#macro template user>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">

        <link rel="icon" type="image/png" href="/static/images/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/static/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/static/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/static/vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/static/vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/static/vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/static/login_css/util.css">
        <link rel="stylesheet" type="text/css" href="/static/login_css/main.css">

        <link rel="stylesheet" href="/static/css/style.css">
    </head>
    <body>
    <div class="wrapper">
<<<<<<< HEAD
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 bg-white border-bottom box-shadow">
            <a href="/" class="logo_Img">
                <img src="/static/images/logo_aiu.png" class="img">
            </a>

            <h5 class="my-0 mr-md-auto font-weight-normal">Menu for Ala-Too</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <#if user.isAdmin()>
                    <a class="p-2 text-dark" href="/product/add">Панель администратора</a>
                </#if>
<#--                <a class="p-2 text-dark" href="/">Аккаунт</a>-->
            </nav>

            <#if user.email??>

                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" class="btn btn-outline-primary" value="Выйти"/>
                </form>
            <#else>
                <a href="/login" class="btn btn-outline-primary">Войти</a></h1>
            </#if>

        </div>
=======
<#--        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 bg-white border-bottom box-shadow">-->
<#--            <a href="/" class="logo_Img">-->
<#--                <img src="/static/images/logo_aiu.png" class="img">-->
<#--            </a>-->

<#--            <h5 class="my-0 mr-md-auto font-weight-normal">Menu for Ala-Too</h5>-->
<#--            <nav class="my-2 my-md-0 mr-md-3">-->
<#--                <#if user.isAdmin()>-->
<#--                    <a class="p-2 text-dark" href="/product/add">Панель администратора</a>-->
<#--                </#if>-->
<#--&lt;#&ndash;                <a class="p-2 text-dark" href="/">Аккаунт</a>&ndash;&gt;-->
<#--            </nav>-->

<#--            <#if user.email??>-->

<#--                <form action="/logout" method="post">-->
<#--                    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                    <input type="submit" class="btn btn-outline-primary" value="Выйти"/>-->
<#--                </form>-->
<#--            <#else>-->
<#--                <a href="/login" class="btn btn-outline-primary">Войти</a></h1>-->
<#--            </#if>-->

<#--        </div>-->
>>>>>>> main



        <#nested >
<<<<<<< HEAD
        <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 border-top">
            <p class="col-md-4 mb-0 text-body-secondary company">© 2023 Ala-Too, Inc</p>



            <ul class="nav col-md-4 justify-content-end">
                <li class="nav-item"><a href="/" class="nav-link px-2 text-dark">Меню</a></li>
                <li class="nav-item"><a href="/product/add" class="nav-link px-2 text-dark">Добавить товар</a>
                </li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">FAQs</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">About</a></li>
            </ul>
        </footer>
=======
<#--        <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 border-top">-->
<#--            <p class="col-md-4 mb-0 text-body-secondary company">© 2023 Ala-Too, Inc</p>-->



<#--            <ul class="nav col-md-4 justify-content-end">-->
<#--                <li class="nav-item"><a href="/" class="nav-link px-2 text-dark">Меню</a></li>-->
<#--                <li class="nav-item"><a href="/product/add" class="nav-link px-2 text-dark">Добавить товар</a>-->
<#--                </li>-->
<#--                <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">FAQs</a></li>-->
<#--                <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">About</a></li>-->
<#--            </ul>-->
<#--        </footer>-->
>>>>>>> main
    </div>

    <script src="/static/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="/static/vendor/bootstrap/js/popper.js"></script>
    <script src="/static/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="/static/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="/static/vendor/tilt/tilt.jquery.min.js"></script>
    <script >
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <script src="/static/js/mainLogin.js"></script>
    </body>
    </html>
</#macro>