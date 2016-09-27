<?php
require_once 'includes/utilities.inc.php';
?>
<!DOCTYPE html>
<!--
Pepster's Place 
A Website Design & Development Company
President John R Pepp
-->
<html>
    <head>
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/stylesheet.css">
        <title></title>
    </head>
    <body>
        <header class="container headingStyle">
            <h1>Pepster's Trivia Game</h1>
        </header>
        <div class="container mainContent">


            <div class="mainGame">
                <!-- The Question that is pulled in from PHP and jQuery -->
                <div class="questStyle">
                    <h3 class="displayQuest">&nbsp;</h3>
                </div>
                <!-- The Possible Answers that is also pulled in from PHP and jQuery -->
                <ol class="possibleAnswers">
                    <li><a id="answer1" class="answer1 row span12 clicked" href="" data-answer="1"></a></li>
                    <li><a id="answer2" class="answer2 row span12 clicked" href="" data-answer="2"></a></li>
                    <li><a id="answer3" class="answer3 row span12 clicked" href="" data-answer="3"></a></li>
                    <li><a id="answer4" class="answer4 row span12 clicked" href="" data-answer="4"></a></li>
                </ol>

                <div class="scoreboard">
                    <!-- The Countdown Counter done in jQuery -->
                    <div class="span6 stopwatch">
                        <p class="countdownClock">Timer: <span class="timer"></span></p>
                    </div>
                    <!-- The Score done in jQuery -->
                    <div class="span6 scoreBox">
                        <p class="score">Score: <span class="totalPoints"></span> </p>
                    </div> 

                </div>
                <div class="nextBtnBox">
                    <button class="nextBtn">Next Question</button>
                </div>

            </div>

            <script src="javascript/jquery-1.10.2.min.js"></script>
            <script src="javascript/game_play_01.js"></script>
        </div>
    </body>
</html>
