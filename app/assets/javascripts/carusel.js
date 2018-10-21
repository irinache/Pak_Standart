// помечаем картинки
var lis = document.getElementsByTagName('li');

lenth = lis.length;
for (var i = 0; i < lis.length; i++) {
    lis[i].style.position = 'relative';
    var span = document.createElement('span');
    span.style.cssText = 'position:absolute;left:0;top:0';
    span.innerHTML = i + 1;
    lis[i].appendChild(span);
}

//var width = 33.333333;  // ширина изображения

var count = 1; // количество изображений для сдвига
var position = 0; // текущий сдвиг влево

window.onload = function () {
    var width = document.getElementById("it").clientWidth;
    var carousel = document.getElementById("carousel");
    var list = carousel.querySelector('ul.images');
    var listElems = carousel.querySelectorAll('li');


carousel.querySelector('.prev').onclick = function () {
    // сдвиг влево
    width = document.getElementById("it").clientWidth;

    position = Math.min(position + width * count, 0);
    list.style.marginLeft = position + 'px';

}
carousel.querySelector('.next').onclick = function () {
    // сдвиг вправо
    width = document.getElementById("it").clientWidth;

    if(position>(-width*4))
    {
        position = position - width * count;
        list.style.marginLeft = position + 'px';
    }
}
    window.onresize = function () {
        position = 0;
        list.style.marginLeft = position + 'px';
    };
};
