<?php

require_once 'includes/utilities.inc.php';
if ($user && $user->security_level !== 'sysop') {
    header("Location: trivia.php");
    exit();
}

use trivia_project\trivia_game\GenerateGame as Generate;

$dailyTen = [];
$categories = ['movie', 'space'];
$generate = new Generate();

$result = $generate->checkTriviaTable();

if ($result) {
    $data = $generate->readTriviaQuestions($categories);

    if ($data) {
        $dailyTen = $generate->dailyQuestions($data);
        $generate->updateTriviaQuestions($dailyTen);
        header("Location: trivia.php");
        exit();
    }
} else {
    header("Location: trivia_maintenance.php");
    exit();
}


