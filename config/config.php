<?php

ob_start(); //Turns on output buffering
session_start();

$timezone = date_default_timezone_set("Europe/Athens");

// Change the host, user, password

$con= mysqli_connect('host', 'user', 'password', 'social');

if(mysqli_connect_errno()) {
    echo "Failed to connect:" . mysqli_connect_errno();
}




