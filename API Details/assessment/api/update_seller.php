<?php

 include('connect.php');

 $id = $_POST['id'];
 $name = $_POST['seller_name'];
 $contact = $_POST['contact'];
 $add = $_POST['address'];


$Sql_Query = "UPDATE v_sellers SET seller_name='$name' ,contact='$contact',address='$add' WHERE id = '$id'";

 if(mysqli_query($con,$Sql_Query))
{
 echo 'Record Updated Successfully';
}
else
{
 echo 'Something went wrong';
 }

 mysqli_close($con);
?>