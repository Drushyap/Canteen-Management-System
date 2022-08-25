<?php include('config/constants.php'); ?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bill</title>
    <link rel="stylesheet" href="./css/admin.css">
</head>
<body>
<div class="main-content">
    <div class="wrapper">
        <h2 >Bill details</h2>
        <br>
        <table class="tbl-full">
            <tr>
                <th>Order No.</th>
                <th>Item</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
                <th>Order Date</th>
            </tr>

            <?php
                //Query to bill details
                $order_id = $_GET['ord_id'];
                $sql = "SELECT * FROM tbl_order WHERE id= $order_id";
                
                $res = mysqli_query($conn, $sql);
                if($res == TRUE){
                    $row = mysqli_fetch_assoc($res);
                    $food = $row['food'];
                    $price = $row['price'];
                    $qty = $row['qty'];
                    $total = $row['total'];
                    $order_date = $row['order_date'];

                    ?>

                    <tr>
                        <td><?php echo $order_id ?></td>
                        <td><?php echo $food ?></td>
                        <td><?php echo $price?></td>
                        <td><?php echo $qty ?></td>
                        <td><?php echo $total ?></td>
                        <td><?php echo $order_date ?></td>
                    </tr>

                    <?php

                }
                else
                {

                }
                
            ?>
            
        </table>
    </div>

</div>

<div class="wrapper text-center">
    <button onclick="window.print()" class="btn btn-primary"><p>Print your bill</p></button>
    <br><br>
    <button class="btn btn-secondary">
         <a href="<?php echo SITEURL ; ?>">Press to Order more</a>
        </button>
</div>

    
</body>
</html>

