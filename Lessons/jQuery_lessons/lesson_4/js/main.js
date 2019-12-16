//Фильтры//

/*Простые фильтры в jQuery */

//$('p:first').css('border', '1px solid red'); // Первый элемент
//$('p:last').css('border', '1px solid red'); // Последний элемент
//$('a:eq(2)').css('border', '1px solid red'); // Элемент под номером ... (нумерация с 0)
//$('*:not(h2,p)').css('border', '1px solid red'); // Исключает из найденных элементов selector
//$('li:odd').css('border', '1px solid red'); // Четные найденные элементы
//$('li:even').css('border', '1px solid red'); // Нечетные найденные элементы
//$('li:gt(0)').css('border', '1px solid red'); // Элементы чей порядковый номер больше n
//$('li:lt(3)').css('border', '1px solid red'); // Элементы чей порядковый номер иеньше n
//$('*:header').css('border', '1px solid red'); // Только те элементы, которые являются заголовками
//$('li:animated').css('border', '1px solid red'); // Только те элементы, которые задействованы в анимации
//$('li:hidden').css('border', '1px solid red'); // Скрытые элементы
//$('li:visible').css('border', '1px solid red'); // Видымые элементы
//$('li:lang(ru)').css('border', '1px solid red'); // Фильтрация по языку