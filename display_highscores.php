<?php
require_once __DIR__ . '/vendor/autoload.php';
require_once 'includes/utilities.inc.php';

use trivia_project\trivia_game\Highscores;

$highscores = new Highscores();

$stmt = $highscores->read();
?>
<!DOCTYPE html>
<!--
Pepster's Place 
A Website Design & Development Company
President John R Pepp
-->
<html lang="en">
    <head>
        <meta charset="UTF-8">        
        <title>Display High Scores</title>
        <link rel="stylesheet" href="css/stylesheet.css">        
    </head>
    <body>
        <table id="highscoresTable" summary="Player's Top Ten">
            <thead>
                <tr>
                    <th scope="col" colspan="3" class="highscoresHeading">Top Ten High Scores</th>
                </tr>
                <tr>
                    <th scope="col">Player</th>
                    <th scope="col">Score</th>
                    <th scope="col">Date</th>
                </tr>
            </thead>
            <tbody>
                <?php
                
                while ($row = $stmt->fetch(PDO::FETCH_OBJ)) {
                    $maxZeros = 5;
                    echo "<tr>\n";
                    echo "<td>" . $row->playername . "</td>\n";
                    echo "<td class='scoreAlign'>" . $row->highscore . "</td>\n";
                    $play_date = new DateTime($row->play_date, new DateTimeZone("America/Detroit"));
                    echo "<td>" . $play_date->format("F j, Y") . "</td>\n";
                    echo "</tr>\n";
                }
                ?>
            </tbody>
        </table>
    </body>
</html>
