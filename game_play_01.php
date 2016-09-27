<?php

require_once 'includes/utilities.inc.php';

use trivia_project\trivia_game\OutputQA;

/* Makes it so we don't have to decode the json coming from JQuery */
header('Content-type: application/json');



$game_play = new OutputQA();

$q_num = filter_input(INPUT_POST, 'current_question', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

if (isset($q_num) && $q_num) {
    $data = $game_play->readQA($q_num);
    if ($data) {
        $output = json_encode($data[0]);
        output($output);
    } else {
        $output = 'eof';
        errorOutput($output, 410);
    }
}

$id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
$answer = filter_input(INPUT_POST, 'answer', FILTER_SANITIZE_NUMBER_INT);

if (isset($id) && isset($answer)) {

    $result = $game_play->checkDailyTen($id, $answer);

    if ($result) {
        $output = json_encode($result);
        output($output);
    } else {
        $output = json_encode(['eof' => TRUE, 'message' => 'There are no more questions']);
        errorOutput($output, 410);
    }
}

/*
 * Set error code then send message to Ajax/JQuery 
 */

function errorOutput($output, $code = 500) {
    http_response_code($code);
    echo $output;
}

/*
 * If everything validates OK then send success message to Ajax/jQuery 
 */

function output($output) {
    http_response_code(200);
    echo $output;
}
