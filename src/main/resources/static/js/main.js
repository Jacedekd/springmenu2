document.addEventListener('DOMContentLoaded', () => {
    let cartItems = JSON.parse(localStorage.getItem('cartItems')) || {};
    let cartTotal = 0;
    const cartIcon = document.querySelector('.cart-icon');
    const cartTotalElement = document.createElement('div');
    cartTotalElement.classList.add('cart-total');
    const mainCart = document.querySelector('.mainCart');
    const mainCartPrice = document.querySelector('.mainCartPrice');
    mainCartPrice.appendChild(cartTotalElement);

    // Обновляем отображение корзины при загрузке страницы
    loadCartFromLocalStorage();

    if (Object.keys(cartItems).length > 0) {
        mainCart.classList.add('active');
    }


    // Делегирование событий для кнопок "+" и "-"
    document.addEventListener('click', (event) => {
        if (event.target.classList.contains('add-to-cart') || event.target.classList.contains('remove-from-cart')) {

            if(event.target.classList.contains('add-to-cart')) {
                mainCart.classList.add('active');
            }

            const productElement = event.target.parentElement.previousElementSibling.lastElementChild;
            const productName = productElement.querySelector('.mainItem__Title').textContent;
            const change = event.target.classList.contains('add-to-cart') ? 1 : -1;

            changeItemQuantity(productName, change);


        }
    });

    function changeItemQuantity(name, change) {
        if (!cartItems[name]) {
            cartItems[name] = 0;

        }

        cartItems[name] += change;
        if (cartItems[name] <= 0) {
            delete cartItems[name];


            // Удаляем элемент из корзины, если он есть
            const cartItemElement = document.querySelector(`.cart-item[data-name="${name}"]`);
            if (cartItemElement) {
                cartItemElement.remove();
            }
        }

        if (Object.keys(cartItems).length > 0) {
            mainCart.classList.add('active');
        }
        if(!Object.keys(cartItems).length > 0) {
            mainCart.classList.remove('active');
        }


        // Обновляем количество на карточке товара
        const productElement = document.querySelector(`.mainItem__Info[data-name="${name}"]`);
        if (productElement) {
            productElement.parentElement.nextElementSibling.querySelector('.quantity').textContent = cartItems[name] || 0;
        }

        updateCartTotal();
        saveCartToLocalStorage();
    }

    function updateCartTotal() {
        cartTotal = 0;
        for (const item in cartItems) {
            const productElement = document.querySelector(`.mainItem__Info[data-name="${item}"]`);
            if (productElement) { // Проверяем, что элемент продукта найден
                const price = parseFloat(productElement.querySelector('.mainItem__Price').textContent.replace(/\s/g, ''));
                const formattedPrice = productElement.querySelector('.mainItem__Price').textContent.replace(/\s/g, '');
                console.log(formattedPrice)
                cartTotal += price * cartItems[item];
            }
        }
        cartTotalElement.textContent = `${cartTotal} c`;
    }

    function saveCartToLocalStorage() {
        try {
            console.log('Saving to localStorage:', cartItems);
            localStorage.setItem('cartItems', JSON.stringify(cartItems));
        } catch (error) {
            console.error('Ошибка при сохранении корзины в localStorage:', error);
            // Дополнительные действия при ошибке (например, показать сообщение пользователю)
        }
    }

    function loadCartFromLocalStorage() {
        try {
            const storedCartItems = JSON.parse(localStorage.getItem('cartItems')) || {};
            console.log('Loaded from localStorage:', storedCartItems);

            if (Object.keys(storedCartItems).length === 0) {
                console.warn('Корзина пуста или данные не найдены в localStorage');
                return;
            }

            cartItems = storedCartItems;
            for (const item in storedCartItems) {
                const productElement = document.querySelector(`.mainItem__Info[data-name="${item}"]`);
                if (productElement) {
                    productElement.parentElement.nextElementSibling.querySelector('.quantity').textContent = cartItems[item];
                }
            }

            updateCartTotal();
        } catch (error) {
            console.error('Ошибка при загрузке корзины из localStorage:', error);
            // Дополнительные действия при ошибке
        }
    }
});




document.addEventListener('DOMContentLoaded', () => {
    const cart__Group = document.querySelector('.cart__Group');

    function loadCartFromLocalStorage() {
        try {
            const storedCartItems = JSON.parse(localStorage.getItem('cartItems')) || {};
            console.log('Loaded from localStorage:', storedCartItems);

            if (Object.keys(storedCartItems).length === 0) {
                console.warn('Корзина пуста или данные не найдены в localStorage');
                return;
            }

            for (const item in storedCartItems) {
                displayCartItem(item, storedCartItems[item]);
            }
        } catch (error) {
            console.error('Ошибка при загрузке корзины из localStorage:', error);
        }
    }

    function displayCartItem(name, quantity) {
        const cartItemElement = document.createElement('div');
        cartItemElement.classList.add('cart__Block');
        cartItemElement.innerHTML = `
            
                        <div class="cart__Item">
                            <div class="cart__ItemTitle">${name}</div>
                            <div class="cart__ItemPrice">30 с</div>
                        </div>
                        <div class="cart__Item">
                            <div class="cart__ItemTotal">30 c x ${quantity} = 60 c</div>
                        </div>
        `;
        cart__Group.appendChild(cartItemElement);
    }

    loadCartFromLocalStorage();
});

