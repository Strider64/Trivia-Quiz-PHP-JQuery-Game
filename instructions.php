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
<script src="javascript/jquery-3.1.1.min.js"></script>
<script src="javascript/login_button.js"></script>
<script src="javascript/game_play_01.js"></script>
</body>
</html>

