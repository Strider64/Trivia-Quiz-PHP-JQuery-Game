<?php
require_once __DIR__ . '/vendor/autoload.php';
require_once 'includes/utilities.inc.php';

use trivia_project\users\Validate;
use trivia_project\users\Verification;
use trivia_project\users\Members as Register;

$submit = filter_input(INPUT_POST, 'submit', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

if (isset($submit) && $submit === 'enter') {
    $data = filter_input(INPUT_POST, 'data', FILTER_SANITIZE_FULL_SPECIAL_CHARS, FILTER_REQUIRE_ARRAY);
    $valid = new Validate($data);
    $resultArray = $valid->resultArray;
    if (!is_array($resultArray)) { // If it is not an array then send verification and save user data to database table:
        $send = new Verification($data);
        $result = $send->sendEmailVerification();
        $data['confirmation_code'] = $result;
        $register = new Register();

        $check = $register->create($data);
    } else {
        echo "<pre>" . print_r($resultArray, 1) . "</pre>";
    }
}
?>
<!DOCTYPE html>
<!--
Pepster's Place 
A Website Design & Development Company
President John R Pepp
-->
<html lang="en">
    <head>
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/stylesheet.css">
        <title>Pepster's Trivia Game</title>
    </head>
    <body>
        <header class="container headingStyle">
            <h2 class="logo"><span>Pepster's Place - Circle of Life</span> <a href="https://www.pepster.com"></a></h2>
            <a class="triviaBtn" href="trivia.php">Trivia Game</a>
        </header>

        <div class="container mainContent">
            <form id="register" class="span7" action="<?php echo $basename; ?>" method="post">
                <fieldset>
                    <legend>Registration Form</legend>
                    <label for="username">username</label>
                    <input id="username" type="text" name="data[username]" value="">
                    <label for="password">password</label>
                    <input id="password" type="password" name="data[password]">
                    <label for="email">email</label>
                    <input id="email" type="text" name="data[email]" value="">
                    <input id="submit" type="submit" name="submit" value="enter">
                </fieldset>
            </form>
        </div>
        <script src="javascript/jquery-3.1.1.min.js"></script>
        <script src="javascript/game_play_01.js"></script>
    </body>
</html>