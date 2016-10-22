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
        <title>Pepster's Trivia Game</title>
        <link rel="stylesheet" href="css/stylesheet.css">

    </head>
    <body>

        <header class="container headingStyle">
            <h2 class="logo"><span>Pepster's Place - Circle of Life</span> <a href="https://www.pepster.com"></a></h2>

            <?php if (!$user) { ?>
                <a class="loginBtn" href="#">Login</a>
            <?php } else { ?>
                <div class="logout">
                    <p class="logoutTxt">Welcome, <?php echo $user->username; ?>!<span><a class="logoutLink" href="logout.php">logout</a></span></p>
                </div>
            <?php } ?>
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