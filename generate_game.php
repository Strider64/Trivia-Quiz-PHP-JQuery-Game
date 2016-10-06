<?php

require_once 'includes/utilities.inc.php';

use trivia_project\trivia_game\GenerateGame as Generate;

$dailyTen = [];
$categories = ['movie', 'space'];
$generate = new Generate();

$data= $generate->readTriviaQuestions($categories);

if ($data) {
    $dailyTen = $generate->dailyQuestions($data);
    echo "<pre>" . print_r($dailyTen,1 ) . "</pre>";
    $generate->updateTriviaQuestions($dailyTen);
}


