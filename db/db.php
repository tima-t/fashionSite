<?php
/**
 * Created by PhpStorm.
 * User: Tito
 * Date: 12/31/2015
 * Time: 4:41 AM
 */
define("HOST", "localhost");
define("USER", "root");
define("PASSWORD","");
define("DATABASE", "fashiont");
/* connect database test */
$mysqli = new mysqli(HOST, USER, PASSWORD,DATABASE);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
$mysqli->set_charset('utf8');