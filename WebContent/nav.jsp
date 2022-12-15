<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
 	String name = (String) session.getAttribute("name");
%>

    <div class="hd_wrap">
        <a href="index.jsp" class="logo"><img src="./img/logo/lush_transparent.png" width="110" alt="로고"></a>
        <nav class="tnb">
        
        
        <%
        	if(id!=null && id.equals("admin")){
        %>
			<div>
        		<a href="memList.jsp">회원 관리</a>
        		<a href="boardList.jsp">게시판 관리</a>
        		<a href="logout.jsp">로그아웃</a>
        	</div>
        <%
        	} else if(id!=null) {
        %>	
        	<div>
        		<span class="name_print"><%=name %>님</span>
        		<a href="logout.jsp">로그아웃</a>
        		<a href="meminfo.jsp">회원정보</a>
        	</div>
        <%
        	} else	{
        %>
        	<div>
        		<a href="login.jsp">로그인</a>
        		<a href="join.jsp">회원가입</a>
        	</div>
        <%
        	}
        %>
        </nav>
        <nav class="gnb">
            <ul>
                <li class="item1">
                    <a href="https://www.lush.co.kr/service/introduction" class="dp1">러쉬소개</a>
                    <ul class="sub">
                        <li><a href="brand.jsp#page1">러쉬역사</a></li>
                        <li><a href="brand.jsp#page2">이념과가치</a></li>
                        <li><a href="brand.jsp#page3">브랜드정책</a></li>
                    </ul>
                </li>
                <li class="item2">
                    <a href="https://www.lush.co.kr/categories/index/113" class="dp1">제품</a>
                    <ul class="sub">
                        <li><a href="product.jsp#page1">베스트</a></li>
                        <li><a href="product.jsp#page2">신제품</a></li>
                        <li><a href="product.jsp#page3">배쓰</a></li>
                    </ul>
                </li>
                <li class="item3">
                    <a href="https://www.lush.co.kr/board/shop" class="dp1">오프라인</a>
                    <ul class="sub">
                        <li><a href="offline.jsp#page1">매장안내</a></li>
                        <li><a href="offline.jsp#page2">스파</a></li>
                        <li><a href="offline.jsp#page3">20주년 쇼케이스</a></li>
                    </ul>
                </li>
                <li class="item4">
                    <a href="https://www.lush.co.kr/event/list" class="dp1">커뮤니티</a>
                    <ul class="sub">
                        <li><a href="community.jsp#page1">공지사항</a></li>
                        <li><a href="community.jsp#page2">이벤트</a></li>
                        <li><a href="community.jsp#page3">러쉬타임즈</a></li>
                    </ul>
                </li>
                <li class="item5">
                    <a href="https://www.lush.co.kr/mypage/faq" class="dp1">고객센터</a>
                    <ul class="sub">
                        <li><a href="service.jsp#page1">FAQ</a></li>
                        <li><a href="service.jsp#page2">1:1문의</a></li>
                        <li><a href="service.jsp#page3">상담전화/상담톡</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
