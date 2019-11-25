

var board = document.getElementsByClassName('board')[0],//Игровое поле
	player = document.getElementsByClassName('gamer')[0],//Строка хода
	element, innerElement,
	gammer1 = true,// Показывает, какой игрок сейчас ходит
	gameTable = [[null, null, null], [null, null, null], [null, null, null]],//Матрица игры
	nullCount = 9,//Кол-во оставшихся ходов
	winner = null;

plaer.innerText = 'Сейчас ходит X';

//Генерация игрового поля
for (var i = 0; i < 9; i++) {
	element = document.createElement('div');
	element.classList.add('cell');
