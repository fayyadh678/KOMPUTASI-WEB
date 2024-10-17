<?php 


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="get" action="form3.php" > 
        Nama Depan: <input type="text" name="namadepan"> <br>
        
        Nama Belakang: <input type="text" name="namabelakang"> <br>

        <input type="submit" value="kirim" name="tombol">
    </form>
    <?php
        if(isset($_GET['tombol'])){ 
            $nDepan= $_GET['namadepan'];
            $nBelakang= $_GET['namabelakang'];
            echo "Nama Depan= ".$nDepan;
            echo "<br>Nama Belakang=  ".$nBelakang;
        }
    ?>
</body>
</html>