<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


     <div class="ft_wrap">
         <div class="ft_logo"><img src="./img/logo/lush_transparent.png" width="100" height:auto alt="하단로고"></div>
         <div class="mid_box">
             <nav class="fnb">
                 <a href="member01.jsp">개인정보처리방침</a> 
                 <a href="member02.jsp">영상정보관리지침</a>
                 <a href="member03.jsp">이용약관</a>
             </nav>
             <p class="addr">
                 LUSH KOREA | 대표이사 우미령<br>
                 서울 강남구 학동로 336 (메이트리 빌딩(matree B/D)) 1층 주식회사 러쉬코리아<br>
                 사업자등록번호:201-81-77964 | 통신판매업신고번호: 2022-서울강남-02857<br> 
             </p>
             <p class="copyright">COPYRIGHT ⓒ LUSHKOREA.CO.LTD. ALL RIGHTS RESERVED.</p>
         </div>
         <div class="sel_box">
             <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
                 <option value="">LUSH SNS</option>
                 <option value="https://twitter.com/LUSHKOREA">TWITTER</option>
                 <option value="https://www.instagram.com/lushkorea/">INSTAGRAM</option> 
                 <option value="https://www.youtube.com/user/LUSHKOREA1">YOUTUBE</option>
                 <option value="https://pf.kakao.com/_VEbUM">KAKAOTALK CHANNEL</option>
                 <option value="https://m.post.naver.com/lushkr1">NAVER POST</option>
             </select>
         </div>
         <script>
         function sel_link(sel){
             location.href = sel.value;
         }
         </script>
     </div>
