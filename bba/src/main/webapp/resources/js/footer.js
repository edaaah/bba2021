$(function(){
    $('#whole_footer')
    .on('mouseover', function(){
        $(this).find('#footer').stop(true).animate({'bottom': 0}, 300);
    })
    .on('mouseout', function(){
        $(this).find('#footer').stop(true).animate({'bottom': '-130px'});
    })
});