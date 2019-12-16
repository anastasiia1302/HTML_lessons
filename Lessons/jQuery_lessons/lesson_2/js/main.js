//Взаимодействие с элементами//

$('h2, p') //Первый, второй, третий и тд.
$('h2 span')// outer и inner
$('h2 > span')// parent >child
$('h2 + p')// prev + next
$('h2 ~ p').css('border', '2px solid #000');//prev ~ next