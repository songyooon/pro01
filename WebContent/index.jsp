<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<%@ include file="head.jsp" %>
</head>

   <link rel="stylesheet" href="./css/reset2.css">
   <link rel="stylesheet" href="./css/header.css">

        <style>
    /* header.css */

    .content { clear:both; width: 100%;}
    .vs { clear:both; width: 100%; height:100vh; overflow:hidden;}
    .vdo { display:block; width:100%; height:auto; }
    .page { clear:both; width: 100%;}
    .page_wrap {width: 1200px; margin: 0 auto;}
    .page_tit { text-align: center; font-size:32px; padding-top: 1.2em; padding-bottom: 0.8em;}
    .lst { clear:both; width: 1200px;}
    .lst:after { content:""; display:block; clear:both; }
    .lst li { margin-bottom: 40px;}
    .lst li.left { float:left; width: 816px; height: 459px;}
    .lst li.right { float:right; width: 350px; height: 459px;}
    .ico_lst { clear: both; width: 100%; overflow: hidden;}
    .ico_lst li a { display: block; background-repeat: no-repeat; background-position: 0px center; background-size: auto 80%; padding-left: 80px;}
    .ico_lst li a.icon1 { background-image: url("./img/icon/1.svg"); background-size: 45px; }
    .ico_lst li a.icon2 { background-image: url("./img/icon/2.svg"); background-size: 48px; }
    .ico_lst li a.icon3 { background-image: url("./img/icon/3.svg"); background-size: 43px; }
    .cate_tit { color: #000; font-size: 20px; padding-bottom: 0.5em;}
    .cate_com { color:#000; font-size: 14px;}
    
    .pic_lst { clear: both; width: 100%; padding-bottom: 80px;}
    .pic_lst:after { content: ""; display: block; clear: both;}
    .pic_lst li { float: left; position: relative; margin-bottom: 40px;}
    .pic_lst li a { display: block; width: 360px; margin-right: 40px; overflow: hidden; height:360px;}
    .pic_lst li a img {display: block; width:360px; height:auto; }
    .pic_lst li a:hover img { margin-left: 0; }
    .pic_lst li a .hv_box { width: 360px; height: 300px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
    .pic_lst li a:hover .hv_box { opacity:1; }
    .pic_tit { position:absolute; top:30px; left: 30px; 
    text-shadow:0px 0px 3px #000; }
    .pic_com { position:absolute; right:30px; bottom:30px; 
    background-color: rgba(152, 247, 0, 0.739); color: #000; border-radius:9px;}

    #page3 { background-repeat: no-repeat; 
    background-size: cover; 
    background-position:center; height: 100vh; overflow:hidden; }
    #page3 .page_wrap { width: 100%; }
    .circle_lst { clear:both; width: 4455px; }
    .circle_lst li { width: 200px; height: 200px; position:relative; border-radius:120px; overflow:hidden; background-color: #fff;
    float:left; margin:28px;  }
    .circle_lst.lst2 li { float:right; }
    .circle_lst li a { display:block; width: 100%; height: 100%; }
    .circle_lst li a img { display:block; width:190px; height:auto; 
    position:absolute; top:50%; left: 7px; z-index:11; margin-top: -90px; }
  
	.banner_wraper { height: 220px; width: 1900px; position: absolute; overflow: hidden; }
	.banner_wraper img { width:220px; height: auto; position: absolute;  }

    /* footer */

    </style>
    <link rel="stylesheet" href="./css/footer.css">
    <script>
    $(document).ready(function(){
        $(".hd").css("position", "absolute");
        $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
        $lst1_obj = $(".circle_lst li").clone();
        $(".circle_lst.lst2").append($lst1_obj);
    });    
    </script>

    <body>
<div class="wrap">
 <header class="hd">
 
 <%@ include file="nav.jsp" %>
 
 </header>
 
<div class="content">
    <figure class="vs">
        <video src="./video/20.mp4" autoplay muted loop class="vdo"></video>
    </figure>
    <section class="page" id="page1">
        <div class="page_wrap"> 
             <h2 class="page_tit">TWISTED TWENTY OF LUSH KOREA</h2>
             <ul class="lst">
                 <li class="left">
                     <iframe name="vdo2" id="vdo2" width="816" height="459" src="https://www.youtube.com/embed/XuyYexBNGXg" title="20 YEARS SHOWCASE 세상을 비트는 욕심쟁이 스무살" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                 </li>
                 <li class="right">
                     <ul class="ico_lst">
                         <li>
                             <a href="https://booking.naver.com/booking/5/bizes/767042" target="_blank" class="icon1"> 
                                 <h3 class="cate_tit">쇼케이스 티켓 예약하기</h3>
                                 <p class="cate_com">성수 LAYER 57<br>(서울특별시 성동구 성수이로 20길 57)</p>
                             </a>
                         </li>
                         <li>
                             <a href="https://www.youtube.com/embed/XuyYexBNGXg" target="vdo2" class="icon2"> 
                                 <h3 class="cate_tit">아티스트 콜라보</h3>
                                 <p class="cate_com">나나영롱킴 | 보리 | 캼 | 파이오나 <br>전수경 | 이대철 | 한젬마 | 샘바이펜</p>
                             </a>
                         </li>
                         <li>
                             <a href="https://www.youtube.com/embed/XuyYexBNGXg" target="vdo2" class="icon3"> 
                                 <h3 class="cate_tit">20주년 리미티드 향수</h3>
                                 <p class="cate_com">'욕심쟁이 퍼퓸' 쇼케이스 최초 공개!</p>
                             </a>
                         </li>
                     </ul>
                 </li>
             </ul>
         </div>
     </section>
     <section class="page" id="page2">
         <div class="page_wrap">
             <h2 class="page_tit">ATTENTION</h2>
             <ul class="pic_lst">
                 <li>
                     <a href="https://www.lush.co.kr/mypage/view/1920">
                         <img src="./img/index/logo3.jpg"  width="600" height: auto alt="공지사항" class="pic"> 
                         <div class="hv_box">
                             <h3 class="pic_tit">공지사항</h3>
                             <p class="pic_com">&nbsp;홈페이지 리뉴얼로 인한 비밀번호 초기화&nbsp;</p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="https://www.lush.co.kr/board/article/22284">
                         <img src="./img/index/ralph.PNG"  width="600" height: auto alt="지금 진행중인 캠페인" class="pic">
                         <div class="hv_box">
                             <h3 class="pic_tit">지금 진행중인 캠페인</h3>
                             <p class="pic_com">&nbsp;동물대체시험법 제정안 통과 서명&nbsp;</p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="https://www.lush.co.kr/event/view/1034?eventStatus=">
                         <img src="./img/index/20.png"  width="600" height: auto alt="지금 놓치면 안될 사랑스러운 이벤트" class="pic"> 
                         <div class="hv_box">
                             <h3 class="pic_tit">지금 놓치면 안될 사랑스러운 이벤트</h3>
                             <p class="pic_com">&nbsp;20 YEARS SHOWCASE&nbsp;</p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="https://www.lush.co.kr/event/view/1031?eventStatus=3&page=1&where=CONT_SUBJECT&query=&_csrf=21636d61-c34a-4f10-939d-e6626911bef0">
                         <img src="./img/index/letter.png"  width="600" height: auto alt="지금 놓치면 안될 사랑스러운 이벤트" class="pic"> 
                         <div class="hv_box">
                             <h3 class="pic_tit">지금 놓치면 안될 사랑스러운 이벤트</h3>
                             <p class="pic_com">&nbsp;기대가 클수록 러쉬레터도 큰다!&nbsp;</p>
                         </div>
                     </a>
                 </li>        
                 <li>
                    <a href="https://www.lush.co.kr/event/view/1032?eventStatus=">
                        <img src="./img/index/halloween.PNG"  width="600" height: auto alt="지금 놓치면 안될 사랑스러운 이벤트" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">지금 놓치면 안될 사랑스러운 이벤트</h3>
                            <p class="pic_com">&nbsp;2022 할로윈 에디션 론칭&nbsp;</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="https://www.lush.co.kr/event/view/1019?eventStatus=">
                        <img src="./img/index/artfare.PNG"  width="600" height: auto alt="지금 놓치면 안될 사랑스러운 이벤트" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">지금 놓치면 안될 사랑스러운 이벤트</h3>
                            <p class="pic_com">&nbsp;러쉬 아트페어&nbsp;</p>
                        </div>
                    </a>
                </li>         
             </ul>
         </div>
     </section>
     <section class="page" id="page3">
         <div class="page_wrap">
             <h2 class="page_tit">BEST</h2> 
             <ul class="banner_wraper">
                 <li><a href="https://www.lush.co.kr/products/view/1000001504?dc=standard"><img src="./img/thumb/1supermilk.png" alt="베스트01" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/1000001455?dc=standard"><img src="./img/thumb/2beautysleep.png" alt="베스트02" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/1000001344?dc=standard"><img src="./img/thumb/3orange.png" alt="베스트03" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/1000001226?dc=standard"><img src="./img/thumb/4sleepybubblebar.png" alt="베스트04" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/1000000662?dc=standard"><img src="./img/thumb/5sleepysoap.png" alt="베스트05" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/508?dc=standard"><img src="./img/thumb/6sleepyshowergel.png" alt="베스트06" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/342?dc=standard"><img src="./img/thumb/7theolivebranchshowergel.png" alt="베스트07" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/333?dc=standard"><img src="./img/thumb/8rosearganbodyconditioner.png" alt="베스트08" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/246?dc=standard"><img src="./img/thumb/9dirtybodyspray.png" alt="베스트09" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/238?dc=standard"><img src="./img/thumb/10dirtyspringwashshowergel.png" alt="베스트10" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/220?dc=standard"><img src="./img/thumb/11sleepybodylotion.png" alt="베스트11" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/205?dc=standard"><img src="./img/thumb/12teatreewatertoner.png" alt="베스트12" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/190?dc=standard"><img src="./img/thumb/13outbackmatesoap.png" alt="베스트13" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/174?dc=standard"><img src="./img/thumb/14intergalactic.png" alt="베스트14" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/150?dc=standard"><img src="./img/thumb/15butterball.png" alt="베스트15" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/97?dc=standard"><img src="./img/thumb/16maskofmagnaminty.png" alt="베스트16" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/93?dc=standard"><img src="./img/thumb/17rubrubrub.png" alt="베스트17" class="thumb"></a></li>
             </ul>
         </div>
     </section>
 </div>

<script type="text/javascript">

            //client rolling banner
   window.onload = function() {
            var bannerLeft=0;
            var first=1;
            var last;
            var imgCnt=0;
            var $img = $(".banner_wraper img");
            var $first;
            var $last;

            $img.each(function(){   // 5px 간격으로 배너 처음 위치 시킴
                $(this).css("left",bannerLeft);
                bannerLeft += $(this).width()+8;
                $(this).attr("id", "banner"+(++imgCnt));  // img에 id 속성 추가
            });

            
            if( imgCnt > 9){                //배너 9개 이상이면 이동시킴



                last = imgCnt;

                setInterval(function() {
                    $img.each(function(){
                        $(this).css("left", $(this).position().left-1); // 1px씩 왼쪽으로 이동
                    });
                    $first = $("#banner"+first);
                    $last = $("#banner"+last);
                    if($first.position().left < -200) {    // 제일 앞에 배너 제일 뒤로 옮김
                        $first.css("left", $last.position().left + $last.width()+1 );
                        first++;
                        last++;
                        if(last > imgCnt) { last=1; }   
                        if(first > imgCnt) { first=1; }
                    }
                }, 99);   //여기 값을 조정하면 속도를 조정할 수 있다.(위에 1px 이동하는 부분도 조정하면 

//깔끔하게 변경가능하다           

 }

};

</script>
<footer class="ft">
<%@ include file="footer.jsp" %>
</footer>
</div>
</body>
</html>