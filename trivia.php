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

        <div class="container mainContent">
            <div class="highscoresShadow">

                <div id="tableBox">
                    <!--- Highscores Table -->
                    <div id="cms"></div>
                    <a  class="exitBtn" href="trivia.php">trivia game</a>
                </div>

            </div>
            <div class="span6 gameBackground">
                
                <div class="mainGame">
                    <div class="shadow">
                        <div class="startBox">
                            <h3 class="startHeading">Pepster's Trivia Game</h3>
                            <p class="startParagraph">Author : John Pepp</p>
                            <form id="highscores" action="highscores.php" method="post">
                                <label for="playername">Player Name</label>
                                <input id="playername" type="text" name="player_name" autocomplete="off" autofocus>
                                <input class="enterBtn" type="submit" name="submit" value="enter">
                            </form>
                            <a class="startButton" href="trivia.php">Start</a>
                            <a class="instructions" href="instructions.php">Instructions</a>
                        </div>
                    </div>
                    
                    <div class="quizHeading">
                        <h1 class="quizTitle">Pepster's Trivia Game<span class="todaysDate"><?= $quizDate->format("F j, Y"); ?></span></h1>
                    </div>
                    
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
                        <div class="stopwatch">
                            <p class="countdownClock">Timer: <span class="timer"></span></p>
                        </div>
                        <!-- The Score done in jQuery -->
                        <div class="scoreBox">
                            <p class="score" data-user="">Score: <span class="totalPoints"></span> </p>
                        </div> 

                    </div>
                    <div class="nextBtnBox">
                        <button class="nextBtn">Next Question</button>
                    </div>

                </div>
            </div>

            <article class="span6 gameDescription">
                <h6 class="demoHeading">Pepster's Trivia Game</h6>
                <hr>
                <br>
                <p class="demoParagraph">I originally wrote this game in Flash Actionscript 3.0 about 5 to 6 years ago and about 2 years ago I started to convert it over to PHP. I eventually added JQuery, Ajax and JSON to the game in order to have more of a dynamic experience. I have future modifications in mind for this trivia game. Some of the modifications is having the ability to add, edit and delete questions/answer directly from a web browser. This will give the system administrator and users the ability to add questions/answers directly to the database's table remotely. I also want to add a high score table and each day have a winner. I'm am thinking that the winner of the day will have the ability to add questions/answers to the quiz giving the incentive to comeback tomorrow to play.</p>
                <p class="demoParagraph">All the current games files and the respective directories can be found at <a href="https://github.com/Strider64/Trivia-Quiz-PHP-JQuery-Game">Github</a>. Feel free to use all of the files as is or with modifications, but all I ask is that you give me credit for the game itself. Just inserting the credit inside the code somewhere will be enough for me. Even if you don't use any of the code in your own project I hope this will help you out in the long run.</p>
                <p class="demoParagraph"><a href="https://www.pepster.com">Click Here</a> to go to Pepster's Place which is my main website.</p>
            </article>

        </div>
<?php
        include 'includes/footer.inc.php';
