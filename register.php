<?php
require_once __DIR__ . '/vendor/autoload.php';
require_once 'includes/utilities.inc.php';

use trivia_project\users\Validate;
use trivia_project\users\Verification;
use trivia_project\users\Members as Register;

$submit = filter_input(INPUT_POST, 'submit', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

if (isset($submit) && $submit === 'enter') {

    $url = "https://www.google.com/recaptcha/api/siteverify";

    $remoteServer = filter_input(INPUT_SERVER, 'REMOTE_ADDR', FILTER_SANITIZE_URL);
    $response = file_get_contents($url . "?secret=" . PRIVATE_KEY . "&response=" . \htmlspecialchars($_POST['g-recaptcha-response']) . "&remoteip=" . $remoteServer);
    $recaptcha_data = json_decode($response);

    if (isset($recaptcha_data->success) && $recaptcha_data->success === TRUE) {

        $data = filter_input(INPUT_POST, 'data', FILTER_SANITIZE_FULL_SPECIAL_CHARS, FILTER_REQUIRE_ARRAY);
        
        $valid = new Validate($data);
        $resultArray = $valid->resultArray;
        if (!is_array($resultArray)) { // If it is not an array then send verification and save user data to database table:
            $send = new Verification($data);
            $result = $send->sendEmailVerification();
            $data['confirmation_code'] = $result;
            $register = new Register();
            $check = $register->create($data);
            $errorMsg = 'Successfully Registered!';
        } elseif ($resultArray['empty'] === false){
            $errorMsg = 'All Fields Required, please re-enter!';
        }
    } else {
        $errorMsg = "You are not a human!";
    }
}
include 'includes/header.inc.php';
?>
<div class="container mainContent">
    <form id="register" class="span7" action="<?php echo $basename; ?>" method="post" autocomplete="off">
        <fieldset>
            <legend><?php echo (isset($errorMsg)) ? $errorMsg : 'Registration Form'; ?></legend>
            <label for="username"><?php echo (isset($resultArray) && $resultArray['duplicate'] === false) ? "Duplicate Name, re-enter" : 'username'; ?></label>
            <input id="username" type="text" name="data[username]" value="">
            <label for="password"><?php echo (isset($resultArray) && $resultArray['validPassword'] === false) ? "invalid Password, re-enter!" : 'password'; ?></label>
            <input id="password" type="password" name="data[password]">
            <label for="email"><?php echo (isset($resultArray) && $resultArray['validEmail'] === false) ? "Invalid Email, re-enter!" : "email"; ?></label>
            <input id="email" type="text" name="data[email]" value="">
            <div class="g-recaptcha" data-sitekey="6Lc71goUAAAAAKj8IWRHTruaDezF4eL8QhG9u9Zr"></div>
            <a class="triviaBtn" href="index.php">Trivia Game</a>                    
            <?php echo (isset($resultArray) && !is_array($resultArray)) ? NULL : '<input id="submit" type="submit" name="submit" value="enter">'; ?>

        </fieldset>
    </form>
</div>
<script src="javascript/jquery-3.1.1.min.js"></script>
<script src="javascript/game_play_01.js"></script>
</body>
</html>