<?php
/* Turn on error reporting */
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(-1);
$seconds = 60;
$minutes = 60;
$hours = 24;
$days = 14;

session_set_cookie_params($seconds * $minutes * $hours * $days, "");
session_start();

// Check for a user in the session:
$user = (isset($_SESSION["user"])) ? $_SESSION["user"] : NULL;

require_once "trivia_project/trivia_project.inc.php";
include 'connect/connect.php'; // Connection Variables:

use trivia_project\database\Database as DB;
$db = DB::getInstance();
$pdo = $db->getConnection();

/* Get the current page */
$phpSelf = filter_input(INPUT_SERVER, 'PHP_SELF', FILTER_SANITIZE_URL);
$path_parts = pathinfo($phpSelf);
$basename = $path_parts['basename']; // Use this variable for action='':
$pageName = ucfirst($path_parts['filename']);
