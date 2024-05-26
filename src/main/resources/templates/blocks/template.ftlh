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
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <link rel="stylesheet" href="/static/css/style.css">
    </head>
    <body>
    <div class="wrapper">
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 bg-white border-bottom box-shadow">
            <a href="/" class="logo_Img">
                <img src="/static/images/logo_aiu.png" class="img">
            </a>

            <h5 class="my-0 mr-md-auto font-weight-normal">Menu for Ala-Too</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="/">Меню</a>
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



        <#nested >
<#--        <footer class="footer">-->
<#--            <div class="container">-->
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
<#--            </div>-->
<#--        </footer>-->
    </div>


    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>
    <script src="/static/js/main.js"></script>
    </body>
    </html>
</#macro>