<?php
session_start();

include("database/connection.php");
include("Template/_admin.php");

?>

<link rel="stylesheet" href="style.css">
<style>
  #box1 {
    font-size: large;

    background-color: darkblue;
    color: aliceblue;
    margin: auto;
    width: 300px;
    padding: 20px;
    float: left;
  }
</style>
<?php
$conn = mysqli_connect('localhost', 'root', '', 'shopee');

if(isset($_POST["submit1"])){
    $sql = "INSERT INTO product(item_id, item_brand, item_name, item_price, item_image, item_register)
VALUES('$_POST[item_id]','$_POST[item_brand]','$_POST[item_name]','$_POST[item_price]','$_POST[item_image]','$_POST[item_register]')";
if($conn->query($sql)===true){
    echo"Successfully insart";
}
}

if(isset($_POST["submit2"])){
    $sql = "DELETE FROM product WHERE item_id='$_POST[item_id]'";
if($conn->query($sql)===true){
    echo"Successfully delete";
}
}

if(isset($_POST["submit3"])){
    $sql = "UPDATE product SET  item_brand='$_POST[item_brand]', item_name='$_POST[item_name]', item_price='$_POST[item_price]', item_image='$_POST[item_image]', item_register='$_POST[item_register]' WHERE id= '$_POST[item_id]'";
if($conn->query($sql)===true){
    echo"Successfully update";
}
}
?>

<div id="box1">

  <form method="post">
    <div style="font-size: 20px;margin: 10px;color: white;">Product</div>
    Item ID <br>
    <input id="text" type="text" name="item_id" required><br>
    Item Brand <br>
    <input id="text" type="text" name="item_brand" requiredy><br>
    Item Name<br>
    <input id="text" type="text" name="item_name" requiredy><br>
    Item Price<br>
    <input id="text" type="number" name="item_price" requiredy><br>
    Item Image<br>
    <input id="text" type="text" name="item_image" requiredy><br>

    Item Register Date <br>
    <input id="text" type="date" name="item_register" value="" requiredy><br>
    <div class="btn">
      <a>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <input type="submit" value="insert" name="submit1">
      </a>
    </div>

    <div class="btn">
      <a>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <input type="submit" value="Delete" name="submit2">
      </a>
    </div>
    <div class="btn">
      <a>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <input type="submit" value="Update" name="submit3">
      </a>
    </div>
  </form>
</div>

<div>
  <table border="1" cellspacing="1" cellpadding="10">
    <tr>
      <th>item_id</th>
      <th>item_brand</th>
      <th>item_name</th>
      <th>item_price</th>
      <th>item_image</th>
      <th>item_register</th>

    </tr>
<?php
    $conn = mysqli_connect("localhost", "root", "", "shopee");


$sql = "SELECT item_id, item_brand, item_name, item_price, item_image, item_register FROM product";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["item_id"]. "</td><td>" . $row["item_brand"] . "</td><td>"
. $row["item_name"]."</td><td>". $row["item_price"]. "</td><td>". $row["item_image"]."</td><td>"
. $row["item_register"].  "</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
  </table>
</div>