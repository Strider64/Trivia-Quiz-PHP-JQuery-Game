$(function () {
    var totalQuestions = 10,
            currentQuestion = 1,
            score = 0,
            $totalPts = $('.totalPoints'),
            timer = null,
            $timerAPI = $('.timer'),
            duration = 30,
            id = 1,
            correct = 0,
            score = 0,
            points = 100,
            bright_green = '#395870',
            $checkAns = $('.clicked'),
            $nextBtn = $('.nextBtn'),
            $popupBox = $('.shadow'),
            $startBtn = $('.startBtn'),
            $scoreVal = $('.scoreVal'),
            highscore = 0;

    function displayScore(points) {
        var displayScore = '',
                maxZeros = 5,
                x = 0;
        if (points >= 0) {
            $totalPts.css('color', bright_green);
        } else {
            $totalPts.css('color', 'red');
        }
        displayScore = Math.abs(points);
        displayScore = displayScore.toString();
        while ((displayScore.length - maxZeros) !== 0) {
            displayScore = '0' + displayScore;
        }
        $totalPts.text(displayScore);
    } // End of Display Score Function:

    displayScore(score);

    /*
     * The Timer Function
     */
    function myTimer(sec) {
        var displaySec = null; // This variable is used for HTML display:
        if (timer) {
            clearInterval(timer); // Stop Timer:
        }
        /*
         * The actual timer function, setup and execution.
         */
        timer = setInterval(function () {
            /*
             * Display leading zero if less than 2 digits.
             */
            if (sec < 10) {
                displaySec = "0" + sec;
            } else {
                displaySec = sec;
            }
            /*
             * Display if timer is still running. 
             */
            if (sec !== -1) {
                $timerAPI.text(displaySec);
            }
            if (sec === -1) {
                $checkAns.off('click', check_answer);
                var params = {id: id, answer: 5};
                var myData = jQuery.param(params);
                check_answer_ajax(myData);
                clearInterval(timer);
                $timerAPI.css('color', 'red');
                score = score - 50;
            }
            sec--;
        }, 1000); // End of SetInterval Function:
    } // end of Timer Function:

    $timerAPI.css('color', 'green');
    $timerAPI.text(duration);
    $nextBtn.hide();

    function reset_display(e) {
        e.preventDefault();
        $timerAPI.css('color', 'green');
        $timerAPI.text(duration);
        $nextBtn.off('click', reset_display);
        $nextBtn.hide();
        $checkAns.css('background-color', '#965E00');
        $checkAns.on('click', check_answer);
        load_question(currentQuestion);

    }

    function end_of_game() {
        //highscore = score;
        //$scoreVal.text(highscore);
        //$('.highscoresBox').show();
        $checkAns.off('click', check_answer);
        $nextBtn.text("Game Over");
        $nextBtn.css("background-color", "red");
        $nextBtn.slideDown(500);
        $nextBtn.off('click', reset_display);
    }

    function check_answer(e) {
        e.preventDefault();
        //console.log("e.target", e.target);
        var answer = $(e.target).data('answer');
        var params = {id: id, answer: answer};
        var myData = jQuery.param(params); // Set parameters to correct Ajax format:
        check_answer_ajax(myData);
    } // End of check_answer function:

    function check_answer_ajax(myData) {
        $.ajax({
            type: 'post',
            url: 'game_play_01.php',
            data: myData,
            success: function (result) {
                //console.log(result);


                if (result.correct) {
                    correct += 1;
                    score = score + points;
                    $('.answer' + result.right_answer).css("background-color", "green");
                } else if (result.user_answer === 5) {
                    $('.answer' + result.right_answer).css("background-color", "green");
                } else if (result.user_answer <= 4) {
                    score = score - (points / 4);
                    $('.answer' + result.right_answer).css("background-color", "green");
                    $('.answer' + result.user_answer).css("background-color", "red");
                }
                displayScore(score);
                clearInterval(timer);
                currentQuestion += 1;
                id = currentQuestion;
                if (currentQuestion <= totalQuestions) {
                    $checkAns.off('click', check_answer);
                    $nextBtn.slideDown(500);
                    $nextBtn.on('click', reset_display);
                } else {
                    end_of_game();
                }

            },
            error: function (request, status, error) {

                //console.log(request, status, error);
                //console.log('check_answer', request, request.responseText);


            }
        }); // End of ajax function:
    }

    function load_question(currentQuestion) {
        var params = {current_question: currentQuestion}; // Set parameters:
        var myData = jQuery.param(params); // Set parameters to correct Ajax format:
        $.ajax({
            type: 'post',
            url: 'game_play_01.php',
            data: myData,
            success: function (data) {
                myTimer(duration);
                //console.log(data);
                id = data.id;
                console.log(data.id, data.q_num);
                $('h3.displayQuest').text(data.question);
                //$('h3.displayQuest').text(data.q_num + ". " + data.question);
                $('a.answer1').text(data.answer1);
                $('a.answer2').text(data.answer2);
                $('a.answer3').text(data.answer3);
                $('a.answer4').text(data.answer4);

            },
            error: function (request, status, error) {
                console.log('load_question', request, request.responseText);
                if (request.request.responseText === 'eof') {
                    clearInterval(timer);
                    $checkAns.off('click', check_answer);
                    $nextBtn.hide();
                    $nextBtn.off('click', reset_display);
                }

            }
        }); // End of ajax function:
    } // End of retrieve_question function:


    $checkAns.click(function (event) {
        event.preventDefault();
    });

    $popupBox.show();

    $startBtn.on('click', function (event) {
        event.preventDefault();
        $popupBox.hide();
        load_question(currentQuestion);
        $checkAns.on('click', check_answer);
    });
});  // End of Document Ready:  