<#import "blocks/template.ftlh" as t>
<@t.template user>

        <main class="main">
            <div class="container mainContainer">

                <h1 class="mb-5 adminTitle">Добавление товаров</h1>

                <form action="/product/create" method="post" enctype="multipart/form-data" class="adminForm">
                    Название товара: <input type="text" name="title" class="form-control"/><br><br>
                    Краткое описание товара: <input type="text" name="description" class="form-control"/><br><br>
                    Полное описание товара: <input type="text" name="full_text" class="form-control"/><br><br>
                    <#--                Категория: <input type="text" name="category" class="form-control"/><br><br>-->
                    <label for="category">Категория</label>
                    <select name="category" id="category" class="form-control">
                        <option value="">Категория не выбрана </option>
                        <option value="Завтраки">Завтраки</option>
                        <option value="Первые блюда">Первые блюда</option>
                        <option value="Вторые блюда">Вторые блюда</option>
                        <option value="Салаты">Салаты</option>
                        <option value="Десерты">Десерты</option>
                        <option value="Напитки">Напитки</option>
                    </select><br><br>
                    Граммы: <input type="number" name="gram" class="form-control"/><br><br>
                    Цена товара: <input type="number" name="price" class="form-control"/><br><br>
                    Превью фотография: <input type="file" name="file1" class="form-control"/><br><br>
                    Основная фотография: <input type="file" name="file2" class="form-control"/><br><br>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input class="btn btn-success" type="submit" value="Добавить товар"/>
                </form>


                <h1 class="mb-5 adminTitle">Редактирование товаров</h1>

                <div class="mainBlock">
                    <div class="mainBlock__Title">Завтраки</div>
                <#list products as product>
                    <#if product.category=="Завтраки">
                            <div class="mainGroup">
                                <div class="mainItem mainItemMode">
                                    <div class="imgBlock">
                                        <img src="/images/${product.previewImageId}" /><br><br>
                                    </div>
                                    <div class="mainItem__Info">
                                        <div class="mainItem__Title">${product.title}</div>
                                        <div class="mainItem__Desc">${product.full_text}</div>
                                        <div class="mainItem__Class">
                                            <div class="mainItem__Price">${product.price} сом</div>
                                                <a href="/product/edit/${product.id}" class=" btn btn-success">Редактировать</a>

                                            <form action="/product/delete/${product.id}" method="post">
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                <input class="btn btn-danger" type="submit" value="Удалить товар"/>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    </#if>
                <#else>
                    <h3>Напитков ещё нет</h3>
                </#list>
                </div>
                <div class="mainBlock">
                    <div class="mainBlock__Title">Первые блюда</div>
                    <#list products as product>
                        <#if product.category=="Первые блюда">
                            <div class="mainGroup">
                                <div class="mainItem mainItemMode">
                                    <div class="imgBlock">
                                        <img src="/images/${product.previewImageId}" /><br><br>
                                    </div>
                                    <div class="mainItem__Info">
                                        <div class="mainItem__Title">${product.title}</div>
                                        <div class="mainItem__Desc">${product.full_text}</div>
                                        <div class="mainItem__Class">
                                            <div class="mainItem__Price">${product.price} сом</div>
                                            <a href="/product/edit/${product.id}" class=" btn btn-success">Редактировать</a>
                                            <form action="/product/delete/${product.id}" method="post">
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                <input class="btn btn-danger" type="submit" value="Удалить товар"/>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </#if>
                    <#else>
                        <h3>Напитков ещё нет</h3>
                    </#list>
                </div>
                <div class="mainBlock">
                    <div class="mainBlock__Title">Вторые блюда</div>
                    <#list products as product>
                        <#if product.category=="Вторые блюда">
                            <div class="mainGroup">
                                <div class="mainItem mainItemMode">
                                    <div class="imgBlock">
                                        <img src="/images/${product.previewImageId}" /><br><br>
                                    </div>
                                    <div class="mainItem__Info">
                                        <div class="mainItem__Title">${product.title}</div>
                                        <div class="mainItem__Desc">${product.full_text}</div>
                                        <div class="mainItem__Class">
                                            <div class="mainItem__Price">${product.price} сом</div>
                                            <a href="/product/edit/${product.id}" class=" btn btn-success">Редактировать</a>
                                            <form action="/product/delete/${product.id}" method="post">
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                <input class="btn btn-danger" type="submit" value="Удалить товар"/>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </#if>
                    <#else>
                        <h3>Напитков ещё нет</h3>
                    </#list>
                </div>
                <div class="mainBlock">
                    <div class="mainBlock__Title">Салаты</div>
                    <#list products as product>
                        <#if product.category=="Салаты">
                            <div class="mainGroup">
                                <div class="mainItem mainItemMode">
                                    <div class="imgBlock">
                                        <img src="/images/${product.previewImageId}" /><br><br>
                                    </div>
                                    <div class="mainItem__Info">
                                        <div class="mainItem__Title">${product.title}</div>
                                        <div class="mainItem__Desc">${product.full_text}</div>
                                        <div class="mainItem__Class">
                                            <div class="mainItem__Price">${product.price} сом</div>
                                            <a href="/product/edit/${product.id}" class=" btn btn-success">Редактировать</a>
                                            <form action="/product/delete/${product.id}" method="post">
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                <input class="btn btn-danger" type="submit" value="Удалить товар"/>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </#if>
                    <#else>
                        <h3>Напитков ещё нет</h3>
                    </#list>
                </div>
                <div class="mainBlock">
                    <div class="mainBlock__Title">Напитки</div>
                    <#list products as product>
                        <#if product.category=="Напитки">
                            <div class="mainGroup">
                                <div class="mainItem mainItemMode">
                                    <div class="imgBlock">
                                        <img src="/images/${product.previewImageId}" /><br><br>
                                    </div>
                                    <div class="mainItem__Info">
                                        <div class="mainItem__Title">${product.title}</div>
                                        <div class="mainItem__Desc">${product.full_text}</div>
                                        <div class="mainItem__Class">
                                            <div class="mainItem__Price">${product.price} сом</div>
                                            <a href="/product/edit/${product.id}" class=" btn btn-success">Редактировать</a>
                                            <form action="/product/delete/${product.id}" method="post">
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                <input class="btn btn-danger" type="submit" value="Удалить товар"/>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </#if>
                    <#else>
                        <h3>Напитков ещё нет</h3>
                    </#list>
                </div>
            </div>
        </main>
</@t.template>

