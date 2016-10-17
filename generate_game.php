<?php

require_once 'includes/utilities.inc.php';

/* Makes it so we don't have to decode the json coming from JQuery */
header('Content-type: application/json');

if ($user && $user->security_level !== 'sysop') {
    header("Location: trivia.php");
    exit();
}

use trivia_project\trivia_game\GenerateGame as Generate;

$check = filter_input(INPUT_POST, 'check', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
if (isset($check) && $check) {
    $dailyTen = [];
    $categories = ['movie', 'space'];
    $generate = new Generate();

    $result = $generate->checkTriviaTable();

    if ($result) {
        $data = $generate->readTriviaQuestions($categories);

        if ($data) {
            $dailyTen = $generate->dailyQuestions($data);
            $generate->updateTriviaQuestions($dailyTen);
        }
        
        output(true);
        
    } else {
        output(true);
    }
    
}


/*
 * Set error code then send message to Ajax/JQuery 
 */

function errorOutput($output, $code = 500) {
    http_response_code($code);
    echo json_encode($output);
}

/*
 * If everything validates OK then send success message to Ajax/jQuery 
 */

function output($output) {
    http_response_code(200);
    echo json_encode($output);
}
