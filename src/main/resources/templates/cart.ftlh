<#import "blocks/template.ftlh" as t>
<@t.template user>
    <main class="main">
        <div class="container mainContainer">
            <div class="cart">
                <div class="cart__ImgBlock">
                    <img class="cart__Img" src="/static/images/free-icon-online-order-9410791.png"/>
                    <div class="cart__Title">Ваш заказ</div>
                </div>
                <div class="cart__Group">
                    <div class="cart__Block">
                        <div class="cart__ItemMod">
                            <div class="cart__ItemTitle">Итого</div>
                            <div class="cart__ItemPrice">500 с</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</@t.template>