$(document).ready(function(){
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
        let $p = $(this).next();

        if($p.css('display')=='none'){
            $('.list').siblings('.text').slideUp();
            $p.slideDown();
        }else{
            $p.slideUp();
        }
    })
    
    var searchForm=$("#searchForm");
	
	$("#searchForm button").on("click",function(e){
		// 사용자가 검색을 하기 위해 검색종류 선택하지 않았을 경우
		if(!searchForm.find("option:selected").val()){
			alert("검색종류를 선택하세요.");
			return false;
		}
		// 사용자가 검색을 하기 위해 키워드를 입력하지 않았을 경우
		if(!searchForm.find("input[name='keyword']").val()){
			alert("키워드를 입력하세요.");
			return false;
		}
		// 검색한 후 첫번째 페이지로 이동
		searchForm.find("input[name='pageNum']").val("1");
		e.preventDefault();
		searchForm.submit();
	})
    
    
})