<!DOCTYPE html>
<!--
Pepster's Place 
A Website Design & Development Company
President John R Pepp
-->
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
        <meta name="description" content="Online Trivia Game written in PHP, JQuery, Ajax and JSON with responsive design being priority number one.">
        <meta name="keywords" content="Website, Development, Design, Responsive, HTML, CSS, PHP Object-Oriented Programming, JQuery, Ajax, JSON">
        <meta name="robots" content="index, nofollow">
        <meta name="web_author" content="John Pepp, Developer, Livonia, MI">
        <meta name="language" content="English">
        <title>Pepster's Trivia Game</title>
        <link rel="stylesheet" href="css/stylesheet.css">
        <script src='https://www.google.com/recaptcha/api.js'></script>
    </head>
    <body>
        <header class="container headingStyle">
            <div class="logo" itemscope itemtype="https://interactivetrivia.xyz">
                <a itemprop="url" href="https://interactivetrivia.xyz" title="Online Trivia Game, Livonia, MI">
                    <img itemprop="logo" src="/images/online-trivia-game.png" alt="PHP Trivia Game, Livonia, MI">
                </a>
            </div>
        </header>
        <div  class="login" class="container">

            <form id="loginForm"  action="<?php echo $basename; ?>" method="post">
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