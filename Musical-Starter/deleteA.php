<?php
if (isset($_GET['id']) && !empty($_GET['id'])) {
        require_once("config/connection.php");

        $id = $_GET['id'];
        $sql_delete = "DELETE FROM artist WHERE fullname = '$id';";
        mysqli_query($conn, $sql_delete);
        header("Location: artists.php");
    }
?>