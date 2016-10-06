<?php

namespace trivia_project\trivia_game;

use trivia_project\database\Database as DB;
use PDO;
use DateTime;
use DateTimeZone;

class GenerateGame {

    protected $stmt = \NULL;
    protected $query = \NULL;
    protected $row = \NULL;
    protected $result = \NULL;
    protected $x = 0;
    protected $gameQuestions = [];
    protected $total = \NULL;
    protected $num = 10;
    protected $play_date = \NULL;

    public function __construct() {
        
    }

    public function readTriviaQuestions(array $categories) {
        $db = DB::getInstance();
        $pdo = $db->getConnection();

        foreach ($categories as $category) {
            $this->query = "SELECT * FROM trivia_questions WHERE category=:category";
            $this->stmt = $pdo->prepare($this->query);

            $this->stmt->execute([':category' => $category]);

            $this->result[$this->x] = $this->stmt->fetchAll(PDO::FETCH_ASSOC);

            $this->x += 1;
        }

        return $this->result;

    }

    public function dailyQuestions(array $myData) {
        $this->clearPlaydate();
        foreach ($myData as $data) {
            foreach ($data as $value) {
                array_push($this->gameQuestions, $value);
            }
        }
        $this->total = count($this->gameQuestions) - (count($this->gameQuestions) % $this->num);
        return array_slice($this->gameQuestions, -$this->total);
    }
    
    protected function clearPlaydate() {
        $db = DB::getInstance();
        $pdo = $db->getConnection();
        
        $this->query = "UPDATE trivia_questions SET play_date=:play_date, day_of_year=:day_of_year WHERE id>0";
        $this->stmt = $pdo->prepare($this->query);
        $this->stmt->execute([':play_date' => '0000-00-00 00:00:00', ':day_of_year' => -1]);
    }

    public function updateTriviaQuestions(array $dailyTen) {
        $x = 1;
        $db = DB::getInstance();
        $pdo = $db->getConnection();
        $this->play_date = new DateTime("now", new DateTimeZone("America/Detroit"));
        $this->play_date->modify("midnight");
        $this->query = 'UPDATE trivia_questions SET q_num=:q_num, play_date=:play_date, day_of_year=:day_of_year WHERE id=:id';
        $this->stmt = $pdo->prepare($this->query);
        foreach ($dailyTen as $records) {
            $this->stmt->execute([':q_num' => $x, ':play_date' => $this->play_date->format("Y-m-d H:i:s"), ':day_of_year' => $this->play_date->format("z"), ':id' => $records['id']]);
            if ($x > 9) {
                $this->play_date->modify("+1 Day");
                $x = 1;
            } else {
                $x += 1;
            }
        }
    }

}
