<?php
require_once 'includes/utilities.inc.php';
if ($user && $user->security_level !== 'sysop') {
    header("Location: trivia.php");
    exit();
}
?>
<html lang="en">
    <head>
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/stylesheet.css">
        <title>Pepster's Trivia Game</title>
    </head>
    <body>
        <header class="container headingStyle">
            <h2 class="logo"><span>Pepster's Place - Circle of Life</span> <a href="trivia.php"></a></h2>
            <?php if (!$user) { ?>
                <a class="iconBtn" href="#"><img src="images/icon-maintenance.png" alt="maintenance-btn"></a>
            <?php } else { ?>
                <div class="logout">
                    <p class="logoutTxt">Welcome, <?php echo $user->username; ?>!<span><a class="logoutLink" href="logout.php">logout</a></span></p>
                </div>
            <?php } ?>
        </header>
        <div  id="login" class="container">
            <div class="login">

                <form id="loginForm" action="<?php echo $basename; ?>" method="post">
                    <fieldset>
                        <legend>login</legend>
                        <label for="username">username</label>
                        <input id="username" type="text" name="username" value="">
                        <label for="password">password</label>
                        <input id="password" type="password" name="password">
                        <input type="submit" name="submit" value="login">
                        <a href="register.php">Register?</a>
                    </fieldset>
                </form>

            </div>
        </div>
        <div class="container maintenance">
            <nav class="maintenanceStyle">
                <ul>
                    <li><a href="generate_game.php">generate quiz</a></li>
                    <li><a href="#">add questions</a></li>
                    <li><a href="#">edit questions</a></li>
                    <li><a href="#">delete questions</a></li>
                </ul>
            </nav>
        </div>

        <script src="javascript/jquery-3.1.1.min.js"></script>
        <script src="javascript/login_button.js"></script>
        <script src="javascript/game_play_01.js"></script>
    </body>
</html>