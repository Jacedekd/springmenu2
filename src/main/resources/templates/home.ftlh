<#import "blocks/template.ftlh" as t>
<@t.template user!{} >
    <main class="main">
        <div class="container mainContainer">
            <a class="mainCart" href="/product/cart">
                <img src="/static/images/basket.png" >
                <div class="mainCartPrice"></div>
            </a>
            <div class="mainBlock">
                <div class="mainBlock__Title">Завтраки</div>
            <#list products as product>
                <#if product.category=="Завтраки" && product.show == true>

                        <div data-aos="fade-down" class="mainGroup">
                            <a href="/product/${product.id}" class="mainItem">
                                <div class="imgBlock">
                                    <img src="/images/${product.previewImageId}" /><br><br>
                                </div>
                                <div class="mainItem__Info" data-name="${product.title}">
                                    <div class="mainItem__Title">${product.title}</div>
                                    <div class="mainItem__Desc">${product.full_text}</div>
                                    <div class="mainItem__Price">${product.price} сом</div>
                                </div>
                            </a>
                            <div class="mainItem__Group">
                                <div class="mainItem__Button remove-from-cart" data-name="${product.title}">-</div>
                                <span class="quantity">0</span>
                                <div class="mainItem__Button add-to-cart" data-name="${product.title}">+</div>
                            </div>
                        </div>
                </#if>

            <#else>

                <h3>Первых блюд ещё нет</h3>
            </#list>
            </div>
            <div class="mainBlock">
                <div class="mainBlock__Title">Первые блюда</div>
                <#list products as product>
                    <#if product.category=="Первые блюда" && product.show == true>

                        <div data-aos="fade-down" class="mainGroup">
                            <a href="/product/${product.id}" class="mainItem">
                                <div class="imgBlock">
                                    <img src="/images/${product.previewImageId}" /><br><br>
                                </div>
                                <div class="mainItem__Info" data-name="${product.title}">
                                    <div class="mainItem__Title">${product.title}</div>
                                    <div class="mainItem__Desc">${product.full_text}</div>
                                    <div class="mainItem__Price">${product.price} сом</div>
                                </div>
                            </a>
                            <div class="mainItem__Group">
                                <div class="mainItem__Button remove-from-cart" data-name="${product.title}">-</div>
                                <span class="quantity">0</span>
                                <div class="mainItem__Button add-to-cart" data-name="${product.title}">+</div>
                            </div>
                        </div>
                    </#if>

                <#else>

                    <h3>Первых блюд ещё нет</h3>
                </#list>
            </div>
            <div data-aos="fade-down" class="mainBlock">
                <div class="mainBlock__Title">Вторые блюда</div>
                <#list products as product>
                    <#if product.category=="Вторые блюда" && product.show == true>

                        <div class="mainGroup">
                            <a href="/product/${product.id}" class="mainItem">
                                <div class="imgBlock">
                                    <img src="/images/${product.previewImageId}" /><br><br>
                                </div>
                                <div class="mainItem__Info" data-name="${product.title}">
                                    <div class="mainItem__Title">${product.title}</div>
                                    <div class="mainItem__Desc">${product.full_text}</div>
                                    <div class="mainItem__Price">${product.price} сом</div>
                                </div>
                            </a>
                            <div class="mainItem__Group">
                                <div class="mainItem__Button remove-from-cart" data-name="${product.title}">-</div>
                                <span class="quantity">0</span>
                                <div class="mainItem__Button add-to-cart" data-name="${product.title}">+</div>
                            </div>
                        </div>
                    </#if>

                <#else>

                    <h3>Первых блюд ещё нет</h3>
                </#list>
            </div>
            <div data-aos="fade-down" class="mainBlock">
                <div class="mainBlock__Title">Салаты</div>
                <#list products as product>
                    <#if product.category=="Салаты" && product.show == true>

                        <div class="mainGroup">
                            <a href="/product/${product.id}" class="mainItem">
                                <div class="imgBlock">
                                    <img src="/images/${product.previewImageId}" /><br><br>
                                </div>
                                <div class="mainItem__Info" data-name="${product.title}">
                                    <div class="mainItem__Title">${product.title}</div>
                                    <div class="mainItem__Desc">${product.full_text}</div>
                                    <div class="mainItem__Price">${product.price} сом</div>
                                </div>
                            </a>
                            <div class="mainItem__Group">
                                <div class="mainItem__Button remove-from-cart" data-name="${product.title}">-</div>
                                <span class="quantity">0</span>
                                <div class="mainItem__Button add-to-cart" data-name="${product.title}">+</div>
                            </div>
                        </div>
                    </#if>

                <#else>

                    <h3>Первых блюд ещё нет</h3>
                </#list>
            </div>
            <div data-aos="fade-down" class="mainBlock">
                <div class="mainBlock__Title">Десерты</div>
                <#list products as product>
                    <#if product.category=="Десерты" && product.show == true>

                        <div class="mainGroup">
                            <a href="/product/${product.id}" class="mainItem">
                                <div class="imgBlock">
                                    <img src="/images/${product.previewImageId}" /><br><br>
                                </div>
                                <div class="mainItem__Info" data-name="${product.title}">
                                    <div class="mainItem__Title">${product.title}</div>
                                    <div class="mainItem__Desc">${product.full_text}</div>
                                    <div class="mainItem__Price">${product.price} сом</div>
                                </div>
                            </a>
                            <div class="mainItem__Group">
                                <div class="mainItem__Button remove-from-cart" data-name="${product.title}">-</div>
                                <span class="quantity">0</span>
                                <div class="mainItem__Button add-to-cart" data-name="${product.title}">+</div>
                            </div>
                        </div>
                    </#if>

                <#else>

                    <h3>Первых блюд ещё нет</h3>
                </#list>
            </div>
            <div data-aos="fade-down" class="mainBlock">
                <div class="mainBlock__Title">Напитки</div>
                <#list products as product>
                    <#if product.category=="Напитки" && product.show == true>

                        <div class="mainGroup">
                            <a href="/product/${product.id}" class="mainItem">
                                <div class="imgBlock">
                                    <img src="/images/${product.previewImageId}" /><br><br>
                                </div>
                                <div class="mainItem__Info" data-name="${product.title}">
                                    <div class="mainItem__Title">${product.title}</div>
                                    <div class="mainItem__Desc">${product.full_text}</div>
                                    <div class="mainItem__Price">${product.price} сом</div>
                                </div>
                            </a>
                            <div class="mainItem__Group">
                                <div class="mainItem__Button remove-from-cart" data-name="${product.title}">-</div>
                                <span class="quantity">0</span>
                                <div class="mainItem__Button add-to-cart" data-name="${product.title}">+</div>
                            </div>
                        </div>
                    </#if>

                <#else>

                    <h3>Первых блюд ещё нет</h3>
                </#list>
            </div>
        </div>
    </main>
</@t.template>