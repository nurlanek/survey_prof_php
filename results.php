<?php
//session_start();

require_once 'header.php';
require_once 'dbConn.php';
// $userId = getUserId();
// echo "I am results.php<br>";
// function getUserId(){
//     $userId =  pdo_connect_mysql()->prepare("select id from users where phone_number = ?");
//     $userId->execute([$_SESSION['phone_number']]);
//     $userId =$userId->fetchAll();
//     return $userId[0]['id'];
// }



 //echo $userId;
 $userId = 86;

$pdo = pdo_connect_mysql();

$sql = "SELECT COUNT(answer_value) FROM answers where vertical_id  = 1 and answer_value = 1 and user_id = $userId";
$res = $pdo->query($sql);
$count_a1 = $res->fetchColumn();

$sql = "SELECT COUNT(answer_value) FROM answers where horizontal_id= 1 and answer_value = 2 and user_id = $userId";
$res = $pdo->query($sql);
$count_b1 = $res->fetchColumn();
$resul1 = $count_a1+$count_b1

?>

Result-1 = <?php echo "$resul1<br>"?> 
<!-- Result-2 = <?php echo "$resul2<br>"?> 
Result-3 = <?php echo "$resul3<br>"?> 
Result-4 = <?php echo "$resul4<br>"?>  -->


<?php
// //when you're done with sessions, destroy it
//session_destroy();
?>
