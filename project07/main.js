var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var correctNum = 55;
var guess = 1;




$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
  //updateGuesses(guessesLeft);
  //guessNumber(guess);
  //winparty();
  
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').html(score);
}

function updateGuesses(){
  guessesLeft = guessesLeft-1;
  $('h2#score span#guessesLeft').html(guessesLeft);
}

function guessNumber(){
   guess = document.getElementById("guess").value;
  if(guess > correctNum){
    msgMaybe("Too high!");
	//updateHighScores(scores);
  }else if(guess < correctNum){
    msgMaybe("Too low!!!");
  
  }else{
    winparty();
  }
  updateGuesses();
}

function winparty(){
$('h1#msgtext').html("You won!");

}

function msgMaybe(massage){
$('h1#msgtext').html(massage);
}