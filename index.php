<?php
setlocale(LC_ALL, 'pl_PL.UTF-8');
date_default_timezone_set('Europe/Warsaw');
error_reporting(E_ALL);
ini_set('display_errors', 1);
ini_set('log_errors', 1);
ini_set('error_log', 'errorlog.txt');

$kom = array();

require_once('inc/db.php');
require_once('inc/functions.php');

$db = new Baza('baza/baza.db');

if (isset($_GET['id']))
	$id = $_GET['id'];
else
	$id = 1;

$strona = array();

include_once('inc/template.php');

echo "<h1>Witaj!</h1>";




?>