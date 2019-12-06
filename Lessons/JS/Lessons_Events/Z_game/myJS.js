//Глобальные переменные:
var FIELD_SIZE_X = 20; //строки
var FIELD_SIZE_Y = 20; //столбцы
var SNAKE_SPEED = 300;// интервал между перемещениями змейки
var snake = [];// сама змейка
var direction = 'y+';//направление движения змейки
var gameIsRunning = false;//запущена ли игра
var snake_timer;//таймер для змейки
var food_timer;//таймер для еды
var score = 0; // результат

function init() {
	prepareGameField(); // генерация поля

	var wrap = document.getElementsByClassName('wrap')[0];

	wrap.style.width = '400px';
	// события кнопки Старт и Новая игра
	document.getElementsById('snake-start').addEventListener('click', startGame);
	document.getElementsById('snake-renew').addEventListener('click', refreshGame);

// отслеживание клавиш клавиатуры
	addEventListener('keydown', changeDirection);
}

// функия генерации игрового поля

function prepareGameFieled() {
	//создаём таблицу
	var game_table = document.createElement('table');
	game_table.setAttribute('class', 'game-table');

	// генерация ячеек игровой таблицы
	for (var i = 0; i < FIELD_SIZE_X; i++) {
		// создание строки
		var row = document.createElement('tr');
		row.className = 'game_table-row row-' + i;

		for (var j = 0; j < FIELD_SIZE_Y; j++) {
			// создание ячеек
			var cell = document.createElement('td');
			cell.className = 'game-table-cell cell-' + i + '-' + j;

			row.appendChild(cell);// добавление ячейки

		}
		game_table.appendChild(row);// добавление строки
	}
	
	document.getElementsById('snake-field').appendChild(game_table);//	добавление таблицы
}


// старт игры

function startGame() {
	gameIsRunning = true;
	respawn();//создали змейку

	snake_timer = setInterval(move, SNAKE_SPEED);
	setTimeout(createFood, 5000);
}

// функция расположения змейки на игровом поле

function respawn() {
	// Змейка-масив td
	// Стартовая длина змейки = 2

	// Respawn змейки из цетра
	var start_coord_x = Math.floor(FIELD_SIZE_X / 2);
	var start_coord_y = Math.floor(FIELD_SIZE_Y / 2);

	// Голова змейки
	var snake_head = document.getElementsByClassName('cell-' + start_coord_y + '-' + start_coord_x)[0];
	snake_head.setAttribute('class', snake_head.getAttribute('class') + 'snake-unit');
	// Тело змейки 
	var snake_tail = document.getElementsByClassName('cell-' + (start_coord_y - 1) + '-' + start_coord_x)[0];
	snake_tail.setAttribute('class', snake_tail.getAttribute('class') + 'snake-unit');


	snake.push(snake_head);
	snake.push(snake_tail);
}
// Движение змейки

