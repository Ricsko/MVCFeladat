<?php
    include('header.php');
    include('nav.php');

    echo '<h3>Üdvözöljük oldalunkon!</h3><hr>';

    echo '<p>'.nl2br($data[1][0]['content']).'</p>';

    include('footer.php');
?>

    