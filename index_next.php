<?php
session_start();
    //include and initialize Poll class 
    require_once 'header.php';
    require_once 'dbConn.php';





// connect to the database
$pdo = pdo_connect_mysql();
$msg = '';

$spam = $_POST['spam'];
if (empty($spam)){
// условие проверки, если поле spam пустое, то форма обрабатывается, 

    // Check if POST data is not empty
    if (!empty($_POST)) {
        // Post data not empty insert a new record
        // Check if POST variable "title" exists, if not default the value to blank, basically the same for all variables
        $name = isset($_POST['name']) ? $_POST['name'] : '';
        $surname = isset($_POST['surname']) ? $_POST['surname'] : '';
        $phoneNumber = isset($_POST['phone_number']) ? $_POST['phone_number'] : '';


    //    // Insert new record into the "polls" table
    //    $stmt = $pdo->prepare('INSERT INTO profile1 VALUES (NULL, ?, ?)');
    //    $stmt->execute([$name, $surname]);

        $_SESSION["name"] = $name;
        $_SESSION["surname"] = $surname;
        $_SESSION["phone_number"] = $phoneNumber;

        // Output message to the user
        echo 'Profile created successfully!<br>';
        echo $_SESSION['name'] .' ' .$_SESSION['surname'];
    } elseif(!empty($_POST['phone_number'])){
        echo 'Profile created successfully!<br>';
        echo $_SESSION['name'] .' ' .$_SESSION['surname'];
    }else{
        echo "<a href ='index.php'>Пожалуйста пройдите регистрацию</a>";
    }

} else exit ; //spam bolso chyk ehske

?>

    <a href ="anketa.php?vertical_id=1">начать тест</a>
