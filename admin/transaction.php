<?php $page="transaction" ?>
<?php include('partials/menu.php'); ?>


<div class="main-content">
    <div class="wrapper">
        <h1 class="dash">Recent Transactions</h1>

                <br /><br /><br />

    

                
                <table class="tbl-full">
                    <tr>
                        <th>Bill no.</th>
                        <th>Bill Amount</th>
                        <th>Bill Date</th>
                        <th>Order id</th>
                    </tr>

                    <?php 
                        //Get all the orders from database
                        $sql = "CALL `getTransactions`();"; // DIsplay the Latest Bill at First
                        //Execute Query
                        $res = mysqli_query($conn, $sql);
                        //Count the Rows
                        $count = mysqli_num_rows($res);

                        $sn = 1; //Create a Serial Number and set its initail value as 1

                        if($count>0)
                        {
                            //Order Available
                            while($row=mysqli_fetch_assoc($res))
                            {
                                //Get all the order details
                                $bid = $row['bill_id'];
                                $bamount = $row['bill_amount'];
                                $bdate = $row['bill_date'];
                                $order_id = $row['ord_id'];
                
                                
                                ?>

                                    <tr>
                                        <td><?php echo $bid; ?></td>
                                        <td><?php echo $bamount; ?></td>
                                        <td><?php echo $bdate; ?></td>
                                        <td><?php echo $order_id; ?></td>

                                        
            
                                    </tr>

                                <?php

                            }
                        }
                        else
                        {
                            //Order not Available
                            echo "<tr><td colspan='12' class='error'>Bill details not Available</td></tr>";
                        }
                    ?>

 
                </table>
    </div>
    
</div>

<?php include('partials/footer.php'); ?>