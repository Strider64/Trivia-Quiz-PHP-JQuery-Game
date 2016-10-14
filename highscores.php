<?php

require_once 'includes/utilities.inc.php';

use trivia_project\trivia_game\Highscores;

/* Makes it so we don't have to decode the json coming from JQuery */
header('Content-type: application/json');


$highscores = new Highscores();
$data = [];

$data['highscore'] = filter_input(INPUT_POST, 'highscore', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

if (isset($data['highscore'])) {
    $data['player_name'] = filter_input(INPUT_POST, 'player_name', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $result = $highscores->create($data);
    if ($result) {
        output(TRUE);
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
