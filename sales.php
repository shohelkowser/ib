<?php 
include 'header.php'; require 'db.php'; 

// echo "Today is " . date("Y-m-d") ." " .date("h:i:s"). "<br>";
if (isset($_GET['deliver'])) {
  $A_I = $_GET['deliver'];
  $dq = $_GET['dq'];
  $id = $_GET['id'];
  $conn->query("UPDATE `sales` SET `deliver` = '1' WHERE `sales`.`A_I` = '$A_I'");
  $sql_data = $conn->query("SELECT `quantity` FROM `product` WHERE `id` = '$id'");
  $row = $sql_data->fetch_object();
  $quantity= $row->quantity;
  $result = $quantity - $dq;
  $conn->query("UPDATE `product` SET `quantity` = '$result' WHERE `product`.`id` = '$id'");
  header("Location: sales.php");
}

if (isset($_POST['report'])) {
 // $time = date("Y-m-d") ." " .date("h:i:s");
$year = $_POST['year'];
$month = $_POST['month'];
$day = $_POST['day'];
// echo "$year $month $day";
$time = "$year-$month-$day 00:00:00";
echo "<div style='display: flex;justify-content: center;'> <p class='justify-content-center'> Sales Report from $time to ".date('Y-m-d')." " .date('h:i:s')."</p></div>";
}else{
  
$time = date("Y-m-d") ."  00:00:00";

}

$sql_data = $conn->query("SELECT * FROM `sales` WHERE `created` > '$time' AND  `deliver` = 0 ORDER BY `A_I`");

?>
<style type="text/css">

    /* Zebra striping */
    td, th { 
      max-width: 180px;
      overflow: hidden;
      padding: 6px; 
      border: 1px solid #ccc; 
      text-align: left; 
      text-overflow:ellipsis;
    }
        .scroll{
          height: 100px;
          width: 244px;
          overflow: scroll;
        }
        textarea{
          width: 100px;
        }
</style>
<div style="display: flex;justify-content: center;">

<h1 class="justify-content-center">Sales Report:</h1>


</div>
<div style="display: flex;justify-content: center;">
<p style="display: flex;justify-content: center;">
  <form method="post" action="sales.php">
<select name="year">
  <option value="">Year</option>
  <?php for ($year = date('Y'); $year > date('Y')-100; $year--) { ?>
  <option value="<?php echo $year; ?>"><?php echo $year; ?></option>
  <?php } ?>
</select>
<select name="month">
  <option value="">Month</option>
  <?php for ($month = 1; $month <= 12; $month++) { ?>
  <option value="<?php echo strlen($month)==1 ? '0'.$month : $month; ?>"><?php echo strlen($month)==1 ? '0'.$month : $month; ?></option>
  <?php } ?>
</select>
<select name="day">
  <option value="">Day</option>
  <?php for ($day = 1; $day <= 31; $day++) { ?>
  <option value="<?php echo strlen($day)==1 ? '0'.$day : $day; ?>"><?php echo strlen($day)==1 ? '0'.$day : $day; ?></option>
  <?php } ?>
</select>

<button type="submit" class="btn cart" name="report" >
  Submit
</button>
</div>
</form>
</p>
          




<div style="display: flex;justify-content: center;">
<div class="justify-content-center" role="alert" style="display: flex;">

<br>

<div class="table-responsive">
<table class="table table-hover">
<tr class="bg-primary">
<th scope="col">A_I</th>
<th scope="col">id</th>
<th scope="col">created</th>
<th scope="col">product_name</th>
<th scope="col">price</th>
<th scope="col">quantity</th>
<th scope="col">fullname</th>
<th scope="col">email</th>
<th scope="col">mobile</th>
<th scope="col">address</th>
<th scope="col">Deliver</th>

</tr>
<?php 
while ($row = $sql_data->fetch_object()) {
$A_I = $row->A_I;
$id = $row->id;
$created = $row->created;
$product_name = $row->product_name;
$price = $row->price;
$quantity = $row->quantity;
$fullname = $row->fullname;
$email = $row->email;
$mobile = $row->mobile;
$address = $row->address;
$deliver = $row->deliver;


echo "<tr><th scope='row'>".$A_I."</th>";
echo "<td>".$id."</td>";
echo "<td>".$created."</td>";
echo "<td>".$product_name."</td>";
echo "<td>".$price."</td>";
echo "<td>".$quantity."</td>";
echo "<td>".$fullname."</td>";
echo "<td>".$email."</td>";
echo "<td>".$mobile."</td>";
echo "<td><div class='scroll'>".$address."</div></td>";
echo "<td><a href='?deliver=$A_I&id=$id&dq=$quantity'>
        <button type='submit' class='btn btn-danger'>
        <i class='fa fa-trash' aria-hidden='true'></i>
        Deliver
        </button>

        </a></td></tr>";




}
?>
</table>
</div>


</div>
</div>
<?php include 'footer.php'; ?>