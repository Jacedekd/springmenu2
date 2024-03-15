<#import "blocks/template.ftlh" as t>
<@t.template user>

        <main class="main">
            <div class="container mt-5 mb-5">
                <#list products as product>
                    <#if product.category=="Первые блюда">
                        <div class="mainBlock">
                            <div class="mainBlock__Title">Первые блюда</div>
                            <div class="mainGroup">
                                <div class="mainItem">
                                    <div class="imgBlock">
                                        <img src="/images/${product.previewImageId}" /><br><br>
                                    </div>
                                    <div class="mainItem__Info">
                                        <div class="mainItem__Title">${product.title}</div>
                                        <div class="mainItem__Desc">${product.full_text}</div>
                                        <div class="mainItem__Class">
                                            <div class="mainItem__Price">${product.price} сом</div>
                                            <a href="/product/edit/${product.id}">Редактировать</a>
                                            <form action="/product/delete/${product.id}" method="post">
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                <input type="submit" value="Удалить товар"/>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </#if>
                <#else>
                    <h3>Первых блюд ещё нет</h3>
                </#list>
                <#list products as product>
                    <#if product.category=="Вторые блюда">
                        <div class="mainBlock">
                            <div class="mainBlock__Title">Вторые блюда</div>
                            <div class="mainGroup">
                                <div class="mainItem">
                                    <div class="imgBlock">
                                        <img src="/images/${product.previewImageId}" /><br><br>
                                    </div>
                                    <div class="mainItem__Info">
                                        <div class="mainItem__Title">${product.title}</div>
                                        <div class="mainItem__Desc">${product.full_text}</div>
                                        <div class="mainItem__Class">
                                            <div class="mainItem__Price">${product.price} сом</div>
                                            <a href="/product/edit/${product.id}" class="mainItem__Button">Редактировать</a>
                                            <form action="/product/delete/${product.id}" method="post">
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                <input type="submit" value="Удалить товар"/>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </#if>
                <#else>
                    <h3>Вторых блюд ещё нет</h3>
                </#list>
                <#list products as product>
                    <#if product.category=="Напитки">
                        <div class="mainBlock">
                            <div class="mainBlock__Title">Напитки</div>
                            <div class="mainGroup">
                                <div class="mainItem">
                                    <div class="imgBlock">
                                        <img src="/images/${product.previewImageId}" /><br><br>
                                    </div>
                                    <div class="mainItem__Info">
                                        <div class="mainItem__Title">${product.title}</div>
                                        <div class="mainItem__Desc">${product.full_text}</div>
                                        <div class="mainItem__Class">
                                            <div class="mainItem__Price">${product.price} сом</div>
                                            <a href="/product/edit/${product.id}" class="mainItem__Button">Редактировать</a>
                                            <form action="/product/delete/${product.id}" method="post">
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                <input type="submit" value="Удалить товар"/>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </#if>
                <#else>
                    <h3>Напитков ещё нет</h3>
                </#list>
                <form action="/product/create" method="post" enctype="multipart/form-data">
                    Название товара: <input type="text" name="title" class="form-control"/><br><br>
                    Краткое описание товара: <input type="text" name="description" class="form-control"/><br><br>
                    Полное описание товара: <input type="text" name="full_text" class="form-control"/><br><br>
                    <#--                Категория: <input type="text" name="category" class="form-control"/><br><br>-->
                    <label for="category">Категория</label>
                    <select name="category" id="category" class="form-control">
                        <option value="">Категория не выбрана </option>
                        <option value="Первые блюда">Первые блюда</option>
                        <option value="Вторые блюда">Вторые блюда</option>
                        <option value="Напитки">Напитки</option>
                    </select><br><br>
                    Граммы: <input type="number" name="gram" class="form-control"/><br><br>
                    Цена товара: <input type="number" name="price" class="form-control"/><br><br>
                    Превью фотография: <input type="file" name="file1" class="form-control"/><br><br>
                    Основная фотография: <input type="file" name="file2" class="form-control"/><br><br>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Добавить товар"/>
                </form>
            </div>
        </main>
</@t.template>










<#--<#import "blocks/template.ftlh" as t>-->
<#--<@t.template user>-->
<#--    <h1 style="text-align: center">Поиск товаров</h1><hr>-->
<#--    <form method="get" action="/">-->
<#--        <div class="form-row">-->
<#--            <div class="form-group col-md-2">-->
<#--                <label for="searchCity">Город</label>-->
<#--                <select id="searchCity" class="form-control">-->
<#--                    <option value="">Город не выбран</option>-->
<#--                    <option value="Москва">Москва</option>-->
<#--                    <option value="Красноярск">Красноярск</option>-->
<#--                    <option value="Казань">Казань</option>-->
<#--                </select>-->
<#--            </div>-->
<#--            <div class="form-group col-md-10">-->
<#--                <label for="searchWord">Поиск по объявлениям</label>-->
<#--                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"-->
<#--                       id="searchWord">-->
<#--            </div>-->
<#--            <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>-->
<#--        </div>-->
<#--    </form>-->
<#--    <hr>-->
<#--    <div class="card-columns">-->
<#--        <#list products as product>-->
<#--            <a href="/product/${product.id}" class="product-link">-->
<#--                <div class="card text-white bg-dark my-3 product">-->

<#--                    <img src="/images/${product.previewImageId}"-->
<#--                         class="card-img-top">-->
<#--                    <div class="card-body">-->
<#--                        <h5 class="card-title">${product.title}</h5>-->
<#--                        <p class="card-text">${product.price} ₽</p>-->
<#--                    </div>-->
<#--                    <div class="card-footer">-->
<#--                        ${product.city}-->
<#--                    </div>-->
<#--                </div>-->
<#--            </a>-->
<#--        <#else>-->
<#--            <h1 style="text-align: center">Не найдено</h1>-->
<#--        </#list>-->
<#--    </div>-->
<#--</@t.template>-->