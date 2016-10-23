<?php
require_once __DIR__ . '/vendor/autoload.php';
require_once 'includes/utilities.inc.php';

use trivia_project\users\Members;

$member = new Members();

$username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

if (isset($username) && isset($password)) {
    $result = $member->read($username, $password);
    if ($result) {
        header("Location: trivia.php");
        exit();
    }
}
$quizDate = new DateTime("Now", new DateTimeZone("America/Detroit"));
include 'includes/header.inc.php';
?>
<div class="container help">
    <article class="span6 helpStyle">
        <h1>Pepster's Online Trivia Instructions</h1>
        <p>The game is relatively simple to play, for all you have to do click on the answer that you think is correct and it will either be right or wrong. This page is to clarify a few things that might be a little vague and to explain the scoring system. A player is alloted 10 seconds per question and awarded 100 points per correct answer. A player that is registered and login is alloted 20 seconds per question and awarded 250 points per correct answer. Each incorrect answer a fourth of the total correct points is subtracted (Example: 100 / 4 = 25 points subtracted) and the score can't go lower than 0. There are 10 new questions per day and it does not matter if a person has login or not. This is just a fun trivia game to test your knowledge, so basically I'm saying is don't cheat and have fun for a few minutes of the day. Game play and scoring are subject to change and since the game is actively been modified it will probably be changed more often. Click here to go back to the game - <a href="trivia.php">Pepster's Trivia Game</a></p>
    </article>
</div>
<script src="javascript/jquery-3.1.1.min.js"></script>
<script src="javascript/login_button.js"></script>
<script src="javascript/game_play_01.js"></script>
</body>
</html>

