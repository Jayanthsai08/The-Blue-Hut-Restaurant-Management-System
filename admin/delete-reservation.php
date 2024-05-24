<?php 

//Including the constant file

include('../frontend/config/constants.php');
//include('login-check.php');




$res_id = $_GET['res_id'];
$sql = "DELETE FROM reservations WHERE res_id = $res_id";

//Execute the query

$res = mysqli_query($conn, $sql);

//Check whether the query executed succesfully or not

if($res == true){
    
   $_SESSION['delete'] = "<div class='success'>Reservation freed Successfully</div>";

    header('location:'.SITEURL.'reservations.php');
}
else{

    $_SESSION['delete'] = "<div class='error'>Failed to delete reservation</div>";
    header('location:'.SITEURL.'reservations.php');
}

//3. Redirect to manage admin page with message(Succuess/error)



?>