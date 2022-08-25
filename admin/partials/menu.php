<?php 

    include('../config/constants.php'); 
    include('login-check.php');

?>


<html>
    <head>
        <title>Food Order Website - Home Page</title>

        <link rel="stylesheet" href="../css/admin.css">
    </head>
    
    <body>
        <!-- Menu Section Starts -->
        <div class="menu text-center">
            <div class="wrapper">
                <ul>
                    <li class="<?php if($page=="index"){?>active<?php }?>"><a href="index.php">Home</a></li>
                    <li class="<?php if($page=="admin"){?>active<?php }?>"><a href="manage-admin.php">Admin</a></li>
                    <li  class="<?php if($page=="category"){?>active<?php }?>"><a href="manage-category.php">Category</a></li>
                    <li class="<?php if($page=="food"){?>active<?php }?>"><a href="manage-food.php">Food</a></li>
                    <li class="<?php if($page=="order"){?>active<?php }?>"><a href="manage-order.php">Order</a></li>
                    <li class="<?php if($page=="transaction"){?>active<?php }?>"><a href="transaction.php">Transactions</a></li>
                    <li class="<?php if($page=="logout"){?>active<?php }?>"><a href="logout.php">Logout</a></li>
                </ul>
            </div>
        </div>
        <!-- Menu Section Ends -->