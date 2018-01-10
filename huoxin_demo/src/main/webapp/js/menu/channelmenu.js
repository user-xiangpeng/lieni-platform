/**
 * Created by shenfeng1 on 2015/9/29.
 */
$(function(){
    $('#niutuku_com li').hover(function(){
        $(this).children('ul').stop(true,true).show('fast');
    },function(){
        $(this).children('ul').stop(true,true).hide('fast');
    });

    $('#niutuku_com li').hover(function(){
        $(this).children('div').stop(true,true).show('fast');
    },function(){
        $(this).children('div').stop(true,true).hide('fast');
    });
});