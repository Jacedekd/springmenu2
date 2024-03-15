<#import "blocks/template.ftlh" as t>
<@t.template user>
<form action="/product/edit/${product.id}" method="post" enctype="multipart/form-data">
    Название товара: <input type="text" name="title" class="form-control" value="${product.title}"/><br><br>
    Краткое описание товара: <input type="text" name="description" class="form-control" value="${product.description}"/><br><br>
    Полное описание товара: <input type="text" name="full_text" class="form-control" value="${product.full_text}"/><br><br>
    <#--                Категория: <input type="text" name="category" class="form-control"/><br><br>-->
    <label for="category">Категория</label>
    <select name="category" id="category" class="form-control">
        <option value="">Категория не выбрана </option>
        <option value="Первые блюда">Первые блюда</option>
        <option value="Вторые блюда">Вторые блюда</option>
        <option value="Напитки">Напитки</option>
    </select><br><br>
    Граммы: <input type="number" name="gram" class="form-control" value="${product.gram}"/><br><br>
    Цена товара: <input type="number" name="price" class="form-control" value="${product.price}"/><br><br>
        <select name="is_show" id="is_show" class="form-control">
            <option value="">Ничего не выбрано </option>
            <option value="true">Раскрыть</option>
            <option selected value="false">Скрыть</option>
        </select><br><br>


    Превью фотография: <input type="file" name="file1" class="form-control"/><br><br>
    Основная фотография: <input type="file" name="file2" class="form-control"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Редактировать товар"/>
</form>
</@t.template>