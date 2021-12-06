$(function(){
//    $('#work').each(function(){
//        let $tabList = $(this).find('.tabs_nav'),   // 탭 목록
//            $tabAnchors = $tabList.find('a'),   // 탭(링크)
//            $tabPanels = $(this).find('.tabs_panel')   // 패널
//
//        $tabList.on('click', 'a', function(event){
//            event.preventDefault();
//
//            let $this = $(this);
//
//            if($this.hasClass('active')){
//                return false;
//            }
//
//            $tabAnchors.removeClass('active');
//            $(this).addClass('active');
//
//            $tabPanels.hide();
//            $($this.attr('href')).show();
//            
//        })
//
//        $tabAnchors.eq(0).trigger('click')
//    })

    $('.list').click(function(){
        let $div = $(this).next();

        if($div.css('display')=='none'){
            $('.list').siblings('div').slideUp();
            $div.slideDown();
        }else{
            $div.slideUp();
        }
    })
})