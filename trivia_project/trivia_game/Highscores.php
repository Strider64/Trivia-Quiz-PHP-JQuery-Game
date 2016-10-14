<?php

namespace trivia_project\trivia_game;

use trivia_project\database\Database as DB;
use PDO;
use DateTime;
use DateTimeZone;

class Highscores {

    protected $query = \NULL;
    public $stmt = \NULL;
    public $result = \NULL;

    public function __construct() {
        
    }

    public function create(array $data) {
        $db = DB::getInstance();
        $pdo = $db->getConnection();
        $this->query = 'INSERT INTO highscores (playername, highscore, play_date) VALUES (:playername, :highscore, NOW())';
        /* Prepare the query */
        $this->stmt = $pdo->prepare($this->query);
        /* Execute the query with the stored prepared values */
        $this->stmt->execute([':playername' => $data['player_name'], ':highscore' => $data['highscore']]);
        return TRUE;
    }

    public function read() {
        $db = DB::getInstance();
        $pdo = $db->getConnection();
        $this->stmt = $pdo->query("SELECT playername, highscore, play_date FROM highscores ORDER BY highscore DESC LIMIT 10");
        return $this->stmt;

    }
    public function update() {
        
    }

    public function delete() {
        
    }

    public function check() {
        
    }

}
