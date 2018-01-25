<?php 
include 'header.php'; require 'db.php'; 
if (isset($_POST['submitt'])) {
  $name= $_POST['name'];
  $price= $_POST['price'];
  $details= $_POST['details'];
  $brand= $_POST['brand'];
  $model= $_POST['model'];
  $quantity= $_POST['quantity'];
  $target_dir = "img/";
  $target_file_name0 = $target_dir . basename($_FILES["fileToUpload0"]["name"]);
  $target_file_name1 = $target_dir . basename($_FILES["fileToUpload1"]["name"]);

echo '<div style="display: flex;justify-content: center;">
  <div class="alert alert-danger col-sm-5 justify-content-center" role="alert" style="display: flex;">';

  $uploadOk = 1;
  $imageFileType = strtolower(pathinfo($target_file_name0,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
  if($target_file_name0 !=""){$check = getimagesize($_FILES["fileToUpload0"]["tmp_name"]);}
  if($check !== false) {
    echo "File is an image - " . $check["mime"] . ".";
    $uploadOk = 1;
  } else {
    echo "File is not an image.";
    $uploadOk = 0;
  }
// Check if file already exists
  if (file_exists($target_file_name0)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
  }
// Check file size
  if ($_FILES["fileToUpload0"]["size"] > 5000000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
  }
// Allow certain file formats
  if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" ) {
    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
  $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
  echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
  if (move_uploaded_file($_FILES["fileToUpload0"]["tmp_name"], $target_file_name0)) {
    echo "The file ". basename( $_FILES["fileToUpload0"]["name"]). " has been uploaded.";
  } else {
    echo "Sorry, there was an error uploading your file.";
  }
}

$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file_name1,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if($target_file_name1 !=""){$check = getimagesize($_FILES["fileToUpload1"]["tmp_name"]);}
if($check !== false) {
  echo "File is an image - " . $check["mime"] . ".";
  $uploadOk = 1;
} else {
  echo "File is not an image.";
  $uploadOk = 0;
}
// Check if file already exists
if (file_exists($target_file_name1)) {
  echo "Sorry, file already exists.";
  $uploadOk = 0;
}
// Check file size
if ($_FILES["fileToUpload1"]["size"] > 5000000) {
  echo "Sorry, your file is too large.";
  $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
  && $imageFileType != "gif" ) {
  echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
$uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
  echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
  if (move_uploaded_file($_FILES["fileToUpload1"]["tmp_name"], $target_file_name1)) {
    echo "The file ". basename( $_FILES["fileToUpload1"]["name"]). " has been uploaded.";
  } else {
    echo "Sorry, there was an error uploading your file.";
  }
}

echo "</div></div>";
$conn->query("INSERT INTO `product` (`id`, `name`, `price`, `details`, `brand`, `model`, `quantity`, `img0`,`img1`) 
  VALUES (NULL,
  '$name',
  '$price',
  '$details',
  '$brand',
  '$model',
  '$quantity',
  '$target_file_name0',
  '$target_file_name1'
)");
}
if (isset($_POST['iddelet'])) {
  $id = $_POST['id'];
  $sql_data = $conn->query("SELECT * FROM `product` WHERE `id` = '$id'");
  $row = $sql_data->fetch_object();
  $img0= $row->img0;
  $img1= $row->img1;
  unlink(realpath($_SERVER['DOCUMENT_ROOT']."/".$img0));
  unlink(realpath($_SERVER['DOCUMENT_ROOT']."/".$img1));
  $conn->query("DELETE FROM `product` WHERE `product`.`id` = '$id'");

  echo '<div style="display: flex;justify-content: center;">
  <div class="alert alert-danger col-sm-5 justify-content-center" role="alert" style="display: flex;">
    Delete The Product and Files Permanently.
  </div>
  </div>';
}

$sql_data = $conn->query("SELECT * FROM `product` ORDER BY `product`.`id` DESC");
?>
<style type="text/css">
td, th { 
  max-width: 150px;
  overflow: hidden;
  padding: 6px; 
  border: 1px solid #ccc; 
  text-align: left; 
  text-overflow:ellipsis;
}

.scroll{
	height: 100px;
	width: 144px;
	overflow: scroll;
}
textarea, .number{
	width: 100px;
}


/*
Label the data
*/
</style>

<div class="table-responsive">
  <table class="table table-hover table-fixed" style="display: flex;justify-content: center;">
    <tr class="bg-primary sticky">
      <th scope="col">id</th>
      <th scope="col">name</th>
      <th scope="col">price</th>
      <th scope="col">details</th>
      <th scope="col">brand</th>
      <th scope="col">model</th>
      <th scope="col">quantity</th>
      <th scope="col">img0</th>
      <th scope="col">img1</th>
      <th scope="col">Delete</th>

    </tr>
    <tr>
      <td class="label-success">
        <h4><span class="label label-success">Add  <i class="fa fa-arrow-right" aria-hidden="true"></i> </span> <h4></td>
      <form action="dbc.php" method="post" enctype="multipart/form-data">
        <td><textarea type="text" name="name" value="null"></textarea></td>
        <td><input class="number" type="number" name="price" value=""></td>
        <td><textarea type="text" name="details" value="null"></textarea></td>
        <td><textarea type="text" name="brand" value="null"></textarea></td>
        <td><textarea type="text" name="model" value="null"></textarea></td>
        <td><input class="number" type="number" name="quantity" value=""></td>
        <td><div class="form-group">
          <input type="file" name="fileToUpload0" id="fileToUpload0" class="form-control-file"></div>
        </td>
        <td><div class="form-group">
          <input type="file" name="fileToUpload1" id="fileToUploa1" class="form-control-file"></div>
        </td>
        <td>
          <input type="submit" value="Save" name="submitt" class="btn btn-success">
        </form>
      </tr>

      <?php 
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



        echo "<tr><th scope='row'>".$id."</th>";
        echo "<td>".$name."</td>";
        echo "<td>".$price."</td>";
        echo "<td><div class='scroll'>".$details."</div></td>";
        echo "<td>".$brand."</td>";
        echo "<td>".$model."</td>";
        if($quantity<1){
        echo "<td class='label-danger'><div style='display: flex;justify-content: center;'><h1>".$quantity."</h1></div></td>";
        }else{
         echo"<td>".$quantity."</td>";
        }
        echo "<td><img class='card_img' width='100px' src='".$img0."'/></td>";
        echo "<td><img class='card_img' width='100px' src='".$img1."'/></td>";
        echo "<td>

        <form action='dbc.php' method='post' >
        <input type='hidden' value='".$id."' name='id'/>
        <button type='submit' value='Delete' name='iddelet' class='btn btn-danger'>Delete</button>
        </form>
        </td></tr>";

      }
      ?>
      <!-- <img class='card_img' src='<?php echo $img0; ?>'/> -->


    </table>

  </div>

  <?php include 'footer.php'; ?>