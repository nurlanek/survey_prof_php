
<?php
    //include and initialize Poll class 

require_once 'header.php';
?>

<div class="container">
    <h3>Перед началом тестирования, ответьте пожалуйста на вопросы (все поля обязательны к заполнению)</h3>
    	
       
    <form action="index_next.php" method="post" name="">
     <input type="text" class="hidden" name="spam">

    <label>Name </label>
    <input type="Text" name="name" id="name" > <br><br>
    <label>Surename </label>
    <input type="Text" name="surname" id="surname" >
        <br><br>
        <label>Phone Number </label>
        <input type="number" name="phone_number" id="" >

    <br><br>
    <input type="submit" name="voteSubmit" class="button" >
    
 
    </form>
</div>
