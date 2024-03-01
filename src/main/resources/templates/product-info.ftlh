<#import "blocks/template.ftlh" as t>
<@t.template>
    <div class="container">
        <h4 class="productInfoTitle">Подробная информация о товаре</h4>
        <div class="productInfo">
            <#list images as img>
                <div class="productInfo__Img">
                    <img src="/images/${img.id}" class="img"/>
                </div>
            </#list>
            <div class="productInfo__BLock">
                <div class="productInfo__title">
                    ${product.title}
                </div>
                <div class="productInfo__fullText">
                    ${product.full_text}
                </div>
                <div class="productInfo__gram">
                    ${product.gram} грамм
                </div>
                <div class="productInfo__price">
                    ${product.price} сом
                </div>
            </div>
        </div>


                <form action="/product/delete/${product.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Удалить товар"/>
                </form>
    </div>


</@t.template>