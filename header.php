<?php session_start(); 
// echo "your id ". $_SESSION["id"]." your price ".$_SESSION["price"]*$_SESSION["quantity"]." your quintity ".$_SESSION["quantity"];   

?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ইন্টারনেট বই ডট কম</title><!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link rel="stylesheet" type="text/css" href="css/set1.css" />
	<!-- enno -->
	
	<!-- product -->
	<link href="css/product.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">

	
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">

</head>
	<body>
	

<div id="fh5co-page container">
	
	<header id="fh5co-header" role="banner">
		<div class="container">
			<div class="row">
				<div class="header-inner">
					

						
					<h1>
						<a href="index.php"><img id="logo" src="ib.png" height="50px"></a>
					</h1>

					

					<nav role="navigation">
						<ul>
							<li><a href="index.php">Home</a></li>
							<!-- <li class="call"><a href="tel://123456789">
								<i class="fa fa-phone" aria-hidden="true"></i> +1 123 456 789</a>
							</li> -->
							<li class="cta"><a href="contact.php">Contact us</a></li>
							<?php   
							if(!empty($_SESSION["shopping_cart"]))  
							{  
							  $total = 0;  
							  foreach($_SESSION["shopping_cart"] as $keys => $values)  
							  {  
							   ?> 
					 
							     <?php  
							     $total = $total + ($values["item_quantity"] * $values["item_price"]);  
							   }  
							   ?> 
							   <li class="cta">
							   	<button type="submit" class="btn btn-fefault cart" name="add_to_cart">
							      <i class="fa fa-shopping-cart"></i>
							      Check Out
							   <?php echo number_format($total, 2)." TK";
							    
							   }  
							   ?> 
							 </button>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>