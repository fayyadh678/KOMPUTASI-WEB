<?php 
/*if (isset ($_GET['nama']) ){
    echo $_GET['nama'];
}*/

if (isset ($_POST['nama']) ){
    echo $_POST['nama'];
}

?>
<form action="profile.php" method="post">
    <input type="text" name="nama">
    <input type="password" name="paswword">
    <input type="submit" name="submit">

</form>