$(function () {
    var totalQuestions = 10,
            currentQuestion = 1,
            score = 0,
            $totalPts = $('.totalPoints'),
            timer = null,
            $timerAPI = $('.timer'),
            duration = 10,
            id = 1,
            correct = 0,
            score = 0,
            points = 100,
            bright_green = '#395870',
            $checkAns = $('.clicked'),
            $nextBtn = $('.nextBtn'),
            $popupBox = $('#highscores'),
            $submitBtn = $('.enterBtn'),
            $scoreVal = $('.scoreVal'),
            player_name = null,
            highscore = 0;

    function displayScore(points) {
        if (points <= 0) {
            points = 0;
        }
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
        highscore = displayScore;
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


    $nextBtn.hide();

    function reset_display(e) {
        e.preventDefault();
        $timerAPI.css('color', 'green');
        $timerAPI.text(duration);
        $nextBtn.off('click', reset_display);
        $nextBtn.hide();
        $checkAns.css('background-color', '#aabcfe');
        $checkAns.css('color', '#000');
        $checkAns.on('click', check_answer);
        load_question(currentQuestion);

    }

    function highscoresFCN() {
        $('.highscoresShadow').show();
        var url = 'display_highscores.php'; // Grab the html (formatted css) from printList.php file:
        $('#cms').load(url + ' #highscoresTable'); // Display Result back:

    }

    function displayMyTimer(sec) {
        if (timer)
            clearInterval(timer); // Stop timer 
        /* The actual timer funtion, setup & execution */
        timer = setInterval(function () {
            if (sec === -1) {
                highscoresFCN();
            }
            sec--;
        }, 1000); // End of Actual Timer Function:		
    }

    function end_of_game() {
        var params = {player_name: player_name, highscore: highscore};
        var myData = jQuery.param(params); // Set parameters to correct Ajax format:

        console.log('highscore', highscore)
        $.ajax({
            type: 'post',
            url: 'highscores.php',
            data: myData,
            success: function (info) {
                console.log('info', info);
            },
            error: function (request, status, error) {

                //console.log(request, status, error);
                //console.log('check_answer', request, request.responseText);


            }
        }); // End of ajax function:       

        $nextBtn.text("Game Over");
        $nextBtn.css("background-color", "red");
        $nextBtn.slideDown(500);
        $nextBtn.off('click', reset_display);
        displayMyTimer(2);

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
        $checkAns.off('click', check_answer);
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
                    $('.answer' + result.right_answer).css("color", "#fff");
                } else if (result.user_answer === 5) {
                    $('.answer' + result.right_answer).css("background-color", "green");
                    $('.answer' + result.right_answer).css("color", "#fff");
                } else if (result.user_answer <= 4) {
                    score = Math.round(score - (points / 4));
                    $('.answer' + result.right_answer).css("color", "#fff");
                    $('.answer' + result.right_answer).css("background-color", "green");
                    $('.answer' + result.user_answer).css("color", "#fff");
                    $('.answer' + result.user_answer).css("background-color", "red");
                }
                displayScore(score);
                clearInterval(timer);
                currentQuestion += 1;
                id = currentQuestion;
                if (currentQuestion <= totalQuestions) {
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
        $('.shadow').hide();
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
                //console.log(data.id, data.q_num);
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

    $submitBtn.on('click', function (event) {
        event.preventDefault();
        player_name = $.trim($('#playername').val());
        if (player_name !== '') {
            console.log('player_name', player_name);
            load_question(currentQuestion);
            $checkAns.on('click', check_answer);
            scroll(0,0);
        } else {
            $('#playername').val('');
        }
    });

    function checkUser() {
        var params = {status: true};
        var myData = jQuery.param(params);
        $.ajax({
            type: 'post',
            url: 'game_play_01.php',
            data: myData,
            success: function (info) {
                console.log('info', info);
                if (info.status) {
                    player_name = info.username;
                    duration = info.duration;
                    points = info.points;
                    $('.startButton').css('display', 'block');
                    $('.startButton').on('click', function (event) {
                        event.preventDefault();
                        scroll(0,0);
                        load_question(currentQuestion);
                        $checkAns.on('click', check_answer);
                    });
                } else {
                    $popupBox.show();
                }
                $timerAPI.css('color', 'green');
                $timerAPI.text(duration);
            },
            error: function (request, status, error) {

            }
        }); // end of ajax function:
    }


    function checkDatabaseTable() {
        var params = {check: true};
        var myData = jQuery.param(params); // Set parameters to correct Ajax format:
        $.ajax({
            type: 'post',
            url: 'generate_game.php',
            data: myData,
            success: function (info) {
                if (info) {
                    checkUser();
                }

            },
            error: function (request, status, error) {

            }
        }); // End of ajax function:       
    }

    checkDatabaseTable();

});  // End of Document Ready:  