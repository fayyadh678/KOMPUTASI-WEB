<?php 
if (isset ($_GET['nama']) ){
    echo $_GET['nama'];
}


?>
<form action="latget.php" method="get">
    <input type="text" name="nama">
    <input type="password" name="paswword">
    <input type="submit" name="submit">

</form>