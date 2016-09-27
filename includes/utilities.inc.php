<?php
/* Turn on error reporting */
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(-1);

require_once "trivia_project/trivia_project.inc.php";
include 'connect/connect.php'; // Connection Variables:

use trivia_project\database\Database as DB;
$db = DB::getInstance();
$pdo = $db->getConnection();
