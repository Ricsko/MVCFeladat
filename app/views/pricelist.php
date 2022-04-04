<?php
    include('header.php');
    include('nav.php');

    echo '<h3>Árlistánk</h3><hr>
    <table class="table table-striped table-hover">
    <thead>
        <tr>
          ....................
        </tr>
    </thead>
    <tbody>';
  
    foreach($data[1] as $hamburgers){

    ...........................................
    
    }
    
    echo '</tbody>
    <tfoot>
        <tr>
            <td colspan="................">Összesen: '.sizeOf($data[1]).' hamburger</td>
        </tr>
    </tfoot>
    </table>';

    include('footer.php');
?>
