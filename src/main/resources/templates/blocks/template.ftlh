<#macro template>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link rel="stylesheet" href="/static/css/style.css">
    </head>
    <body>
    <div class="wrapper">
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <div class="logo_Img">
                <img src="/static/images/logo_aiu.png" class="img">
            </div>

            <h5 class="my-0 mr-md-auto font-weight-normal">Menu for Ala-Too</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="/">Меню</a>
                <a class="p-2 text-dark" href="/product/add">Добавить товар</a>
                <a class="p-2 text-dark" href="#">Аккаунт</a>
            </nav>
<#--            <#if>-->
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <input type="submit" class="btn btn-outline-primary" value="Выйти"/>
                </form>
<#--            <#else>-->
<#--            <a href="/login">Войти</a>-->
<#--            </#if>-->
        </div>
        <#nested >
        <footer class="footer">
            <div class="container">
                <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
                    <p class="col-md-4 mb-0 text-body-secondary">© 2023 Company, Inc</p>

                    <a href="/"
                       class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                        <svg class="bi me-2" width="40" height="32">
                            <use xlink:href="#bootstrap"></use>
                        </svg>
                    </a>

                    <ul class="nav col-md-4 justify-content-end">
                        <li class="nav-item"><a href="/" class="nav-link px-2 text-dark">Меню</a></li>
                        <li class="nav-item"><a href="/product/add" class="nav-link px-2 text-dark">Добавить товар</a>
                        </li>
                        <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">Аккаунт</a></li>
                        <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">FAQs</a></li>
                        <li class="nav-item"><a href="#" class="nav-link px-2 text-dark">About</a></li>
                    </ul>
                </footer>
            </div>
        </footer>
    </div>
    </body>
    </html>
</#macro>