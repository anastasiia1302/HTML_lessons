var number;
var attempts = 0;



number = Math.round(1000 + Math.random() * (9999 - 1000));
guessNumber();

function guessNumber(){
	attempts++;
	var result = parseInt(prompt("Введите число (-1 - закончить игру) " ));



	if(result == number){
		alert