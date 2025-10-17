<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div class="main">
    <div class="container mainContainer">
        <h4 class="productInfoTitle">Подробная информация о товаре</h4>
        <div class="productInfo">
                <div class="productInfo__Img">
                    <img src="/images/${product.mainImageId}" class="img"/>
                </div>
            <div class="productInfo__BLock">
                <div class="productInfo__title">
                    ${product.title}
                </div>
                <div class="productInfo__fullText">
                    ${product.full_text}
                </div>
<#--                <div class="productInfo__gram">-->
<#--                    ${product.gram} грамм-->
<#--                </div>-->
                <div class="productInfo__price">
                    ${product.price} сом
                </div>
                <a href="/" class="productInfo__Back">
                    <img src="/static/images/back.png"/>
                </a>
            </div>
        </div>

                <br>

    </div>
    </div>

</@t.template>