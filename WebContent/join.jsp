<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="./css/header.css">
    <style>
    /* header.css */
    .hd { position:fixed; }

    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #fff; }
    .bread_fr { width: 1200px; margin: 0 auto; font-size:13px; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm { border:0 solid rgb(255, 255, 255); padding: 24px; width: 580px; margin:50px auto; }
    .frm_tb { display:table; margin:40px auto;  }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell; }
    .frm_tb th { width:150px; height: 48px;  }
    .frm_tb td { width:300px; height: 48px; }

    .in_dt { background-color:#fff; height:30px; line-height: 32px; width: 180px; 
    color:rgb(0, 0, 0); font-size:14px; text-indent:0.5em; }
    .in_btn { display:block; color: #000; background-color:#fff; min-width:120px; height: 32px; 
    line-height: 32px; border: 1.5px solid #000; border-radius:0; float:left; margin-left:70px; margin-right:20px; cursor:pointer; font-size:13px;  }
    .in_btn:hover {  border-color: transparent; background-color:#fff; color:#000; transition-duration:0.8s; }


    /* ul > li 를 테이블 처럼 출력 */
    .frm_tb { display:table; font-size:13px; }
    .frm_tb li { display:table-row; }
    .frm_tb .td, .frm_tb .th, .frm_tb .td2 { display:table-cell; }
    .frm_tb .th { width:200px; }
    .frm_tb .td { width:200px; }
    .frm_tb .td2 { width:400px; }
    </style>
    <link rel="stylesheet" href="./css/footer.css">
    <script>
    $(document).ready(function(){
        $(".to_top").attr("href", location.href);
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=300){
                $(".to_top").addClass("on");
                $(".to_top").attr("href", location.href);
            } else {
                $(".to_top").removeClass("on");
                $(".to_top").attr("href", location.href);
            }
        });
    });    
    </script>
</head>
<body>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/water.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">회원가입</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">회원가입</h2>
                <div class="form_fr">
                    <form name="frm1" action="joinPro.jsp" method="post" id="joinForm" class="frm" onsubmit="return joinAlert(this)">
                        <table class="frm_tb">
                            <tbody>
                                <tr>
                                    <th><label for="id">아이디</label></th>
                                    <td>
                                        <input type="text" id="id" name="id" class="in_dt" style="display:block; float:left;" placeholder="아이디 입력" maxlength="12" pattern="[a-z0-9]{8,12}" required autofocus>
                                        <br><br><br>
                                        <button type="button" class="in_btn" onclick="idCheck()" style="margin-left:30px;">아이디 중복 확인</button>
                                        <input type="hidden" name="idck" value="no" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="pw">비밀번호</label></th>
                                    <td>
                                        <input type="password" id="pw" name="pw" class="in_dt " placeholder="비밀번호 입력" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="pw2">비밀번호 확인</label></th>
                                    <td>
                                        <input type="password" id="pw2" name="pw2" class="in_dt" placeholder="비밀번호 입력" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="name">이름</label></th>
                                    <td>
                                        <input type="text" id="name" name="name" class="in_dt" placeholder="한글 이름 입력" pattern="\[^(가-힣)]\" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="email">이메일</label></th>
                                    <td>
                                        <input type="email" id="email" name="email" class="in_dt" placeholder="네이버 이메일 입력" pattern=".+@naver\.com" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="tel">연락처</label></th>
                                    <td>
                                        <input type="tel" id="tel" name="tel" class="in_dt" placeholder="연락처 입력" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    <br><br>
                                        <button type="submit" class="in_btn">회원가입</button>
                                        <button type="reset" class="in_btn">취소</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
            <script>
            function joinAlert(f){
            	if(f.pw.value!=f.pw2.value){
            		alert("비밀번호와 비밀번호 확인이 서로 일치 하지 않습니다.");
            		return false;
            	}
            	if(f.idck.value!="yes"){
            		alert("아이디 중복 체크를 하지 않으셨습니다.");
            		return false;
            	}
            }
            function idCheck() {
            	var win = window.open("idCheck.jsp", "idCheckWin",
            			"width=600, height=400");
            }
            </script>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>