<#import "blocks/template.ftlh" as t>
<@t.template user>
    <main class="main">
        <div class="container">
            <#list products as product>
                <#if product.category=="Первые блюда" && product.show == true>
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
                                        <a href="/product/${product.id}" class="mainItem__Button">+</a>
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
                <#if product.category=="Вторые блюда" && product.show == true>
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
                                        <a href="/product/${product.id}" class="mainItem__Button">+</a>
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
                <#if product.category=="Напитки" && product.show == true>
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
                                        <a href="/product/${product.id}" class="mainItem__Button">+</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </#if>
            <#else>
                <h3>Напитков ещё нет</h3>
            </#list>
        </div>
    </main>
</@t.template>