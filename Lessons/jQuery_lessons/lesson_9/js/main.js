/* ==== События браузера и страницы ====*/

$(function() {
	$('p').text('DOM элемнеты загружены')
}); // Готовность DOM элементов

$(window).load(function() {
}); // Полная загрузка страницы

$(window).unload(function() {
	alert('Пользователь, пока!');
}) //Выход со страницы

$(window).resize(function(event) {
	console.log('Размеры окна изменены!')
}); // Изменение размера(например окна)

$(window).scroll(function(event) {
	console.log('Страница прокручена')
}); // Прокрутка элемента