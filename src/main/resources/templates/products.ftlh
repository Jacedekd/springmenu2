<#import "blocks/template.ftlh" as t>
<@t.template>
    <main class="main">
        <div class="container">

            <#list products as product>
                <#if product.category == "Первые блюда">
            <div class="mainBlock">
                    <div class="mainBlock__Title">Первые блюда</div>
                    <div class="mainGroup">
                    <div class="mainItem">
                        <div class="imgBlock">
                            <img src="/images/${product.previewImageId}"/><br><br>
                        </div>
                        <div class="mainItem__Info">
                            <div class="mainItem__Title">${product.title}</div>
                            <div class="mainItem__Desc">${product.full_text}</div>
                            <div class="mainItem__Class">
                                <div class="mainItem__Price">${product.price} сом</div>
                                <a href="/product/${product.id}" class="mainItem__Button">+</a>
                            </div>
                        </div>
                    </div>
                </#if>

            <#else>
                <h3>Первых блюд нет</h3>

                </div>
            </div>
            </#list>
            <#list products as product>
                <#if product.category == "Вторые блюда">
                    <div class="mainBlock">
                    <div class="mainBlock__Title">Вторые блюда</div>
                    <div class="mainGroup">
                    <div class="mainItem">
                        <div class="imgBlock">
                            <img src="/images/${product.previewImageId}"/><br><br>
                        </div>
                        <div class="mainItem__Info">
                            <div class="mainItem__Title">${product.title}</div>
                            <div class="mainItem__Desc">${product.full_text}</div>
                            <div class="mainItem__Class">
                                <div class="mainItem__Price">${product.price} сом</div>
                                <a href="/product/${product.id}" class="mainItem__Button">+</a>
                            </div>
                        </div>
                    </div>
                </#if>

            <#else>
                <h3>Вторых блюд нет</h3>

                </div>
                </div>
            </#list>
            <#list products as product>
                <#if product.category == "Напитки">
                    <div class="mainBlock">
                    <div class="mainBlock__Title">Напитки</div>
                    <div class="mainGroup">
                    <div class="mainItem">
                        <div class="imgBlock">
                            <img src="/images/${product.previewImageId}"/><br><br>
                        </div>
                        <div class="mainItem__Info">
                            <div class="mainItem__Title">${product.title}</div>
                            <div class="mainItem__Desc">${product.full_text}</div>
                            <div class="mainItem__Class">
                                <div class="mainItem__Price">${product.price} сом</div>
                                <a href="/product/${product.id}" class="mainItem__Button">+</a>
                            </div>
                        </div>
                    </div>
                </#if>

            <#else>
                <h3>Напитков нет</h3>

                </div>
                </div>
            </#list>
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