 <?php   
 include 'header.php'; require 'db.php'; 
 if (isset($_POST['add_to_cart'])) {
 $id = htmlentities($_POST['id']);
 $product_name = htmlentities($_POST['product_name']);
 $price = htmlentities($_POST['price']*$_POST['quantity']);
 $quantity = htmlentities($_POST['quantity']);
 $fullname = htmlentities($_POST['fullname']);
 $email = htmlentities($_POST['email']);
 $mobile = htmlentities($_POST['mobile']);
 $address = htmlentities($_POST['address']);
 
 $conn->query("INSERT INTO `ib`.`sales` (`id`, `created`, `product_name`, `price`, `quantity`, `fullname`, `email`, `mobile`, `address`, `A_I`, `deliver`) VALUES ('$id', CURRENT_TIMESTAMP, '$product_name', '$price', '$quantity', '$fullname', '$email', '$mobile', '$address', NULL, '0')");
echo '
<div style="display: flex;justify-content: center;">
<div class="alert alert-success col-sm-5 justify-content-center" role="alert" style="display: flex;">
  We Will Contuct With Your And Send Your Product Within 48 Hours. 
</div>
</div>';

}

?>  

<?php  
if (isset($_GET['id'])) {
 $id = htmlentities($_GET['id']);

 $sql_data = $conn->query("SELECT * FROM `product` WHERE `id` = '$id'");
}

$row = $sql_data->fetch_object();
$id= $row->id;
$name= $row->name;
$price= $row->price;
$details= $row->details;
$brand= $row->brand;
$model= $row->model;
$quantity= $row->quantity;
$img0= $row->img0;
$img1= $row->img1;

?>  
<div class="col-sm-push-0 col-xs-12 col-xs-push-0">
<div class="product-details"><!--product-details-->
 <div class="col-sm-5">
  <div class="view-product">
   <img class="img-responsive" src="<?php echo $img0; ?>" alt="" />
   <h3>New</h3>
 </div>


</div>
<div class="col-sm-7">
  <div class="product-information"><!--/product-information-->
   <img src="img/new.jpg" class="newarrival text-center" alt="" />
   <h2><?php echo $model; ?></h2>
   <!-- <p>Web ID: <?php echo $id; ?></p> -->
   <img src="img/rating.png" alt="" />


<form method="post" action="product.php?id=<?php echo $id; ?>">
     <span>
      <span>TK <?php echo $price; ?></span>
      <label>Quantity:</label>
      <input type="text" name="quantity" value="1"/>
     </span>
    <p><b>Availability: </b><strong><?php echo $quantity; ?></strong> In Stock</p>
    <p><b>Brand:</b> <?php echo $brand; ?></p>
    <p><?php echo $details; ?></p>
    <br>
    <br>
    <h2>Provide your information to complete the purchase</h2>
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <input class="form-control" placeholder="Name" type="text" name="fullname" required="required">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <input class="form-control" placeholder="mobile" type="text" name="mobile" required="required">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <input class="form-control" placeholder="Email" type="text" name="email" required="required">
        </div>
      </div>
      <div class="col-md-12">
        <div class="form-group">
          <textarea name="address" class="form-control" id="" cols="30" rows="7" placeholder="Address" required="required"></textarea>
        </div>
      </div>
      <div class="col-md-12">
        <div class="form-group">
          <!-- <input value="Send Message" class="btn btn-primary" type="submit"> -->
          <input type="hidden" name="product_name" value="<?php echo $name; ?>" />
          <input type="hidden" name="price" value="<?php echo $price; ?>" />
          <input type="hidden" value="<?php echo $id; ?>" name="id"/>
          <?php if($quantity>0){ ?>
            <button type="submit" class="btn btn-fefault cart" name="add_to_cart">
            <i class="fa fa-shopping-cart"></i>
            Buy It Now
          </button>
          <?php } ?>
          
        </div>
      </div>
    </div>
  </div>
</div>

</div><!--/product-information-->
</div>
</div><!--/product-details-->
</form>



<div style="clear:both"></div>  

</div>  
<br />  
<?php include 'footer.php'; ?>