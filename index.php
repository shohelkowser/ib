<?php 
include 'header.php'; 
require 'db.php';
?>
<style type="text/css">
.ul_class{
	/*border:1px solid #73AD21;*/
	width: 100%;
	list-style-type: none;
	padding: 0px;
	margin: 0px;
	overflow:hidden;
	display: flex;
	flex-wrap: wrap;
	justify-content:center;




	/*border: 0px;*/
}
.li-p{
	/*border:1px solid #00f;*/
	position: relative;
	float: left;
	width: 190px;
	height: auto;
	margin: 20px;
	/*margin: auto;*/
	overflow:hidden;



}
.card_img{
	width:182px;
	height:240px;

}
#f1_container {
	/*border:3px solid #73AD21;*/
	position: relative;
	margin: 10px auto;
	width: 190px;
	height: auto;
	z-index: 1;
}
#f1_container:hover #f1_card {
	transform: rotateY(180deg);
	transform-style: preserve-3d;
	box-shadow: -5px 5px 5px #aaa;
}
#f1_card {
	height:243px;
	position: relative;
	transform-style: preserve-3d;
	/*transition: all 0.3s linear;*/
	transition: all 0.6s ease 0s;


}

.face {
	position: absolute;
	transform-style: preserve-3d;
	backface-visibility: hidden;
}
.face.back {
	display: block;
	transform: rotateY(180deg);
	box-sizing: border-box;
	color: white;
	text-align: center;
	background-color: #aaa;
}
#A_2, .H3_1 {
	color: rgb(213, 9, 9);
	display: block;
	height: 18px;
	overflow-wrap: break-word;
	text-align: left;
	text-decoration: none solid rgb(213, 9, 9);
	text-transform: uppercase;
	width: 154.5px;
	word-wrap: break-word;
	column-rule-color: rgb(213, 9, 9);
	perspective-origin: 95.75px 9.5px;
	transform-origin: 95.75px 9.5px;
	caret-color: rgb(213, 9, 9);
	border: 0px none rgb(213, 9, 9);
	font: normal normal 900 normal 12px / 18px arial, Arial, Helvetica, sans-serif;
	list-style: none outside none;
	outline: rgb(213, 9, 9) none 0px;
	padding: 1px 37px 0px 0px;
	transition: all 0.3s ease 0s;
	margin-top: 0px;
	margin-bottom: 0px;
}
.price {
	display: block;
	height: 19px;
	overflow-wrap: break-word;
	text-align: left;
	width: 191.5px;
	word-wrap: break-word;
	perspective-origin: 95.75px 9.5px;
	transform-origin: 95.75px 9.5px;
	font: normal normal 700 normal 18px / 19.5px arial, Arial, Helvetica, sans-serif;
	list-style: none outside none;
	margin: 6px 0px 0px;
}
#A_1 {
	color: rgb(0, 0, 0);
	overflow-wrap: break-word;
	text-align: left;
	text-decoration: none solid rgb(0, 0, 0);
	text-transform: uppercase;
	column-rule-color: rgb(0, 0, 0);
	caret-color: rgb(0, 0, 0);
	font: normal normal 400 normal 13px / 18px arial, Arial, Helvetica, sans-serif;
	list-style: none outside none;
	margin: 0px 0px 5px;
	outline: rgb(0, 0, 0) none 0px;
	padding: 10px 0px 0px;
	transition: all 0.3s ease 0s;
}

.product-item {
	border: #CCC 1px solid;
	border-radius: 4px;
}
</style>

<div class="container" >


	<ul class="ul_class">
		<?php 
		$sql_data = $conn->query("SELECT * FROM `product` ORDER BY `id` DESC"); 
		while ($row = $sql_data->fetch_object()) {
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

			<li class="li-p">
				<div id="f1_container" style="border: #CCC 1px solid; padding:5px; border-radius: 4px;">
					<a href="product.php?id=<?php echo $id; ?>">
						<div id="f1_card" class="shadow">
							<div class="front face">
								<img class="card_img" src="<?php echo $img0; ?>"/>
							</div>
							<div class="back face center">
								<img class="card_img" src="<?php echo $img1; ?>"/>
							</div>
						</div>
					</a>
					<div class="product-details">
						<h3 class="H3_1">
							<a id="A_2" href="product.php?id=<?php echo $id; ?>"><?php echo $model; ?></a>
						</h3>
						<p>
							<a id="A_1" href="product.php?id=<?php echo $id; ?>"></a><?php echo $brand; ?>
						</p>
						<span class="price"><?php echo $price.' TK'; ?></span>
					</div>
				</div>

			</li>

			<?php 
		} 
		?>
	</ul>


</div>
<?php include 'footer.php'; ?>