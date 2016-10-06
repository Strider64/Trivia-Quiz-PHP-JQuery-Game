$(function() {
    var daily_ten = [],
    category = 'movieTrivia';
    
    function saveDailyQuestions() {
        var params = {id_days: 'setup'};
        var myData = jQuery.param(params); // Set parameters to corret AJAX format;
        $.ajax({
            type: 'post',
            url: 'process_daily_ten.php',
            data: myData,
            success: function (info) {
                //console.log('saveDailyQuestions:', info);
                dailyTenCheck();
            },
            error: function (request, status, error) {

            }
        }); // End of Ajax Function:        
    }    
    
    saveDailyQuestions();

    function dailyTenCheck() {
        var params = {deleteDaily: 'deleteDaily'};
        var myData = jQuery.param(params); // Set parameters to corret AJAX format;
        $.ajax({
            type: 'post',
            url: 'process_daily_ten.php',
            data: myData,
            success: function (data) {
                
                //console.log('daily ten check', data);
                if (data) {
                    daily_ten = data;
                    //console.log('inside if:',data);
                    writeDailyTen();
                }
            },
            error: function (request, status, error) {
                //console.log('request.responseText', request.responseText);
                //console.log(status);
                //console.log(error);
            }
        }); // End of Ajax Function:           
    }



    function writeDailyTen() {
        var params = {myData: daily_ten};
        var myData = jQuery.param(params); // Set parameters to corret AJAX format;
        $.ajax({
            type: 'post',
            url: 'process_daily_ten.php',
            data: myData,
            success: function (info) {
                console.log('writeDailyTen: ',info);
            },
            error: function (request, status, error) {

            }
        }); // End of Ajax Function:      
    }
    
}); // End of Document Ready:


