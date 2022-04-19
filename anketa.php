<?php
if (!isset($_SESSION['phone_number'])){
    session_start();
    echo $_SESSION['name'] .' ' .$_SESSION['surname'];
}
  require_once 'header.php';
  require_once 'dbConn.php';
// connect to the database
$pdo = pdo_connect_mysql();



$pollAnswers = $pdo->query('select * from poll_answers')->fetchAll();
$verticalId = array();
foreach ($pollAnswers as $h) {
    $verticalId[] = $h['vertical_id'];
}
$verticalId= array_unique($verticalId);
$pollData = $_POST;
?>
<div class="container">
    <h3>Выберите профессию</h3>


<form action="anketa_func.php" method="post"class=" my-5" >
    <div class="questions" >
        <?php for($i=1;$i<=count($verticalId);$i++) {
            echo "<div>";
                foreach ($pdo->query('SELECT poll_id, vertical_id, option_1, option_2, horizontal_id FROM poll_answers WHERE vertical_id='.$i) as $row) :?>

                    <div style="" class="bg-light p-1 my-2 rounded">
                        <?php print $row['poll_id']. "\n"; ?>
                        <br>

                        <input type="radio" id="poll_<?php print $row['poll_id']; ?>_a" name="poll_<?php print $row['poll_id']; ?>" value="1"   <?php if (!empty($pollData['poll_'.$row['poll_id']]) && $pollData['poll_'.$row['poll_id']] == 1) echo "checked";?>>
                        <label for="poll_<?php print $row['poll_id']; ?>_a"><?php print $row['option_1']. "\n"; ?></label>


                        <input type="radio" id="poll_<?php print $row['poll_id']; ?>_b" name="poll_<?php print $row['poll_id']; ?>"  value="2"  <?php if (!empty($pollData['poll_'.$row['poll_id']]) && $pollData['poll_'.$row['poll_id']] == 2) echo "checked";?>>
                        <label for="poll_<?php print $row['poll_id']; ?>_b"><?php print $row['option_2']. "\n"; ?></label>
                        <br>
                        <?php
                        if (!empty($_POST) && empty($pollData['poll_'.$row['poll_id']]))
                        {
                            echo '<p class="text-danger">Пожалуйста Ответьте на вопрос</p>';
                        }
                        ?>
                    </div>
                <?php endforeach;
                echo "<br>
            </div>";
        } ?>

    </div>
    <button type="button" style="float: left;" class="prev float-left">Предыдущий</button>
    <button type="button" style="float: right" class="next float-right" id="next-button" >Следующий</button>
    <br>
    <input style="display: none ;margin: auto;"   type="submit"  class="button btn-choose btn-primary" value="Отправить форму">

  </form>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="slick/slick.js"></script>
<script>
    $('.questions').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows:true,
        prevArrow: $('.prev'),
        nextArrow: $('.next'),
        infinite:false,

    });


    $(this).on('afterChange', function(event, slick, currentSlide) {
        console.log(slick, currentSlide);
        if (slick.$slides.length-1 == currentSlide) {
            $(".btn-choose").css("display", "block");

        }
    })

</script>
 
