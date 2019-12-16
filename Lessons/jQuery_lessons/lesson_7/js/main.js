//* ==== События, связанные с мышью ==== *//

$('button').click(function() {
	console.log('Ты кликнул на кнопку');
}); //Клик мышью

$('button').dblclick(function() {
	console.log('Ты кликнул на кнопку дважды');
}); // Двойной клик мышью

// $('ul li').mouseenter(function(event) {
// $(this).css('color', 'red');
// }); //Наведение мыши на элемент

$('ul li').mousedown(function(event) {
	$(this).css('color', 'red');
}); // Момент нажатия кнопки мыши

$('ul li').mouseup(function(event) {
	$(this).css('color', '#333');
}); // Момент отжатия кнопки мышки

$('ul  li').mouseover(function(event) {
	$(this).css('color', 'blue');
}); // Мышь наезжает на площадь элемента

$('ul li').mouseout(function(event) {
	$(this).css('color', 'black');
}); // Мышь покидает площать элемета

$('ul li').mousemove(function(event) {
	$(this).toggleClass('blue');
}); // Движение мыши над элементом