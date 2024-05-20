// document.addEventListener('DOMContentLoaded', () => {
//     const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
//     let cartTotal = 0;
//
//     const addToCartButtons = document.querySelectorAll('.add-to-cart');
//     const cartElement = document.getElementById('cart');
//
//     const mainCartPrice = document.querySelector('.mainCartPrice');
//
//     // Загрузка корзины из localStorage
//     loadCartFromLocalStorage();
//
//     addToCartButtons.forEach(button => {
//         button.addEventListener('click', () => {
//             const product = button.parentElement.previousElementSibling
//             const productName = product.querySelector('.mainItem__Title').textContent;
//
//             if (productName) {
//                 const productPrice = parseFloat(product.querySelector('.mainItem__Price').textContent);
//
//                 addItemToCart(productName, productPrice);
//                 updateCartDisplay();
//                 saveCartToLocalStorage();
//
//
//
//             } else {
//                 console.error("<h3> element not found in product");
//             }
//         });
//     });
//
//     function addItemToCart(name, price) {
//         const existingItem = cartItems.find(item => item.name === name);
//         if (existingItem) {
//             existingItem.quantity++;
//         } else {
//             cartItems.push({ name, price, quantity: 1 });
//         }
//         cartTotal += price;
//     }
//
//     function updateCartDisplay() {
//         cartElement.innerHTML = ''; // Очищаем корзину
//         mainCartPrice.innerHTML = ''; // Очищаем корзину
//
//         cartItems.forEach(item => {
//             const cartItemElement = document.createElement('div');
//             cartItemElement.classList.add('cart-item');
//             cartItemElement.innerHTML = `
//         ${item.name} - ${item.price} c x ${item.quantity}
//         <button class="remove-item" data-name="${item.name}">Удалить</button>
//         <button class="decrease-quantity" data-name="${item.name}">-</button>
//         <button class="increase-quantity" data-name="${item.name}">+</button>
//       `;
//             const mainItem__Group = document.querySelectorAll('.mainItem__Group')
//
//                 mainItem__Group.appendChild(cartItemElement)
//             // mainItem__Group.appendChild(cartItemElement);
//         });
//
//         const totalElement = document.createElement('div');
//         totalElement.textContent = `${cartTotal}`;
//         mainCartPrice.appendChild(totalElement);
//
//         attachEventListenersToCartItems();
//
//
//     }
//
//     function attachEventListenersToCartItems() {
//         const removeButtons = document.querySelectorAll('.remove-item');
//         const decreaseButtons = document.querySelectorAll('.remove-from-cart');
//         const increaseButtons = document.querySelectorAll('.increase-quantity');
//
//         removeButtons.forEach(button => {
//             button.addEventListener('click', () => {
//                 removeItemFromCart(button.dataset.name);
//             });
//         });
//
//         decreaseButtons.forEach(button => {
//             button.addEventListener('click', () => {
//                 changeItemQuantity(button.dataset.name, -1);
//             });
//         });
//
//         increaseButtons.forEach(button => {
//             button.addEventListener('click', () => {
//                 changeItemQuantity(button.dataset.name, 1);
//             });
//         });
//     }
//
//     function removeItemFromCart(name) {
//         const index = cartItems.findIndex(item => item.name === name);
//         if (index !== -1) {
//             cartTotal -= cartItems[index].price * cartItems[index].quantity;
//             cartItems.splice(index, 1);
//             updateCartDisplay();
//             saveCartToLocalStorage();
//         }
//     }
//
//     function changeItemQuantity(name, change) {
//         const item = cartItems.find(item => item.name === name);
//         if (item) {
//             item.quantity += change;
//             if (item.quantity <= 0) {
//                 removeItemFromCart(name);
//             } else {
//                 cartTotal += item.price * change;
//                 updateCartDisplay();
//                 saveCartToLocalStorage();
//             }
//         }
//     }
//
//     function saveCartToLocalStorage() {
//         localStorage.setItem('cartItems', JSON.stringify(cartItems));
//     }
//
//     function loadCartFromLocalStorage() {
//         cartItems.forEach(item => {
//             cartTotal += item.price * item.quantity;
//         });
//         updateCartDisplay();
//     }
// });


document.addEventListener('DOMContentLoaded', () => {
    const cartItems = JSON.parse(localStorage.getItem('cartItems')) || {};
    let cartTotal = 0;
    const cartIcon = document.querySelector('.cart-icon'); // Иконка корзины
    const cartTotalElement = document.createElement('div'); // Элемент для общей стоимости
    cartTotalElement.classList.add('cart-total');
    cartIcon.appendChild(cartTotalElement);

    // Обновляем отображение корзины при загрузке страницы
    updateCartTotal();

    // Делегирование событий для кнопок "+" и "-"
    document.addEventListener('click', (event) => {
        if (event.target.classList.contains('increase-quantity') || event.target.classList.contains('decrease-quantity')) {
            const productElement = event.target.closest('.product');
            const productName = productElement.querySelector('h3').textContent;
            const change = event.target.classList.contains('increase-quantity') ? 1 : -1;

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
        }

        // Обновляем количество на карточке товара
        const productElement = document.querySelector(`.product[data-name="${name}"]`);
        if (productElement) {
            productElement.querySelector('.quantity').textContent = cartItems[name] || 0;
        }

        updateCartTotal();
        saveCartToLocalStorage();
    }

    function updateCartTotal() {
        cartTotal = 0;
        for (const item in cartItems) {
            const productElement = document.querySelector(`.product[data-name="${item}"]`);
            const price = parseFloat(productElement.querySelector('.price').textContent);
            cartTotal += price * cartItems[item];
        }
        cartTotalElement.textContent = `${cartTotal} c`;
    }

    function saveCartToLocalStorage() {
        localStorage.setItem('cartItems', JSON.stringify(cartItems));
    }

    function loadCartFromLocalStorage() {
        const storedCartItems = JSON.parse(localStorage.getItem('cartItems')) || {};
        for (const item in storedCartItems) {
            changeItemQuantity(item, storedCartItems[item]); // Восстанавливаем количество из localStorage
        }
    }
});



