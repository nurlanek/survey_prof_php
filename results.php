<?php
session_start();
require_once 'dbConn.php';
$userId = getUserId();
echo "I am results.php<br>";
function getUserId(){
    $userId =  pdo_connect_mysql()->prepare("select id from users where phone_number = ?");
    $userId->execute([$_SESSION['phone_number']]);
    $userId =$userId->fetchAll();
    return $userId[0]['id'];
}


echo $userId;

//when you're done with sessions, destroy it
//session_destroy();
