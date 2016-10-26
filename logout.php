<?php

require_once 'includes/utilities.inc.php';

use trivia_project\users\Members as Users;

$logout = new Users();

$result = $logout->delete();

if ($result) {
    header("Location: index.php");
    exit();
}