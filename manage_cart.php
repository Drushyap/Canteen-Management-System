<?php
session_start();


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['add_to_cart'])) {
        if (isset($_SESSION['cart'])) {
            $my_items = array_column($_SESSION['cart'], 'item_name');
            if (in_array($_POST['item_name'], $my_items)) {
                echo "<script> alert('Item already added to cart');
                        window.location.href = 'http://localhost/food-order/foods.php';    
                </script>";
            } else {
                $count = count($_SESSION['cart']);
                $_SESSION['cart'][$count] = array('item_name' => $_POST['item_name'], 'price' => $_POST['price'], 'Quantity' => 1);
                // print_r($_SESSION['cart']);
                echo "<script> alert('Item  added to cart');
                window.location.href = 'http://localhost/food-order/foods.php';    
        </script>";
            }
        } else {
            $_SESSION['cart'][0] = array('item_name' => $_POST['item_name'], 'price' => $_POST['price'], 'Quantity' => 1);
            // print_r($_SESSION['cart']);
            echo "<script> alert('Item  added to cart');
                        window.location.href = 'http://localhost/food-order/foods.php';    
                </script>";
        }
    }
}
