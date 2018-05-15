/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $('.profile').on('click.profile', function () {
        if ($(".demo").css('display') === 'none') {
            $(".demo").css("display", "block");
            $(".demo").css("width", "0px");
            $(".demo").animate({width: 765});
            $(".demo1").css("display", "none");
        }
    });
    $('.changepass').on('click.changepass', function () {
        if ($(".demo1").css('display') === 'none') {
            $(".demo1").css("display", "block");
            $(".demo1").css("width", "0px");
            $(".demo1").animate({width: 770});
            $(".demo").css("display", "none");
        }
    });
});
