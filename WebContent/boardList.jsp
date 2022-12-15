<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
String uid = (String) session.getAttribute("id");
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String dbid = "test3";
String dbpw = "9876";
String sql = "";
int cnt = 0;
int amount = 0;
int curPage = 1;
int pageCount = 1;
int startNum = 1;
int endNum = 10;
try {
	Class.forName("oracle.jdbc.OracleDriver");
	con = DriverManager.getConnection(url, dbid, dbpw);
	//게시글 수 카운트
	sql = "select count(*) cnt from boarda";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
	if(rs.next()){
		amount = rs.getInt("cnt");
	}
	rs.close();
	pstmt.close();
%>
<!DOCTYPE html>
<html>
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
    .bread_fr { width: 1200px; margin: 0 auto;  font-size:13px; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm { border:2px solid #000; padding: 24px; width: 780px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:600px; border-collapse:collapse; font-size:13px; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:2px solid #000; border-top:2px solid #000; 
    color:#000; background-color:#fff; }
    .tb td { height: 48px; border-bottom:1px solid #000; text-align:center; }
	.tb tr th:first-child { width:80px; text-align:center; }
	.tb tr th:nth-child(2) { width:160px; text-align:center; }
	.tb tr th:nth-child(3) { width:160px; text-align:center; }
	.tb tr th:last-child { text-align:center; }
	
	.page_nation_fr {text-align:center; font-size:13px; }
	
	a:link {
 	 color : #000;
	}
	a:visited {
  	color : #000;
	}
	a:hover {
  	color : #000;
	}
	a:active {
 	 color : #000
	}
	
	.btn_group { clear:both; width:580px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:13px;
	line-height:24px; border:1.5px solid #000; text-align:center; }
	.btn_group .btn.primary { background-color:transparent; color:#000; margin-left:230px;}
	.btn_group .btn.primary:hover { border-color: transparent; background-color:#fff; color:#000; transition-duration:0.8s;}
	
    </style>
    <link rel="stylesheet" href="./css/footer.css">
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
                <span class="sel">게시판</span>
            </div>
        </div>
        
<%
	if(request.getParameter("curPage")!=null){
		curPage = Integer.parseInt(request.getParameter("curPage"));
	}
	
	pageCount = (amount % 10==0) ? (amount / 10) : (amount / 10) + 1;
	startNum = curPage * 10 - 9;
	endNum = curPage * 10;
	if(endNum>amount){
		endNum = amount;
	}
%>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">글 목록</h2>
  					<table class="tb">
  						<thead>
  							<tr>
  								<th>번호</th>
  								<th>제목</th>
  								<th>작성자</th>
  								<th>작성일</th>
  							</tr>
  						</thead>
  						<tbody>         
<%
		pstmt = null;
		rs = null;
		//게시글 검색
		sql = "select no, title, content, author, resdate from "; 
		sql = sql +	"(select rownum rn, no, title, content, author, resdate from boarda order by no desc) t1 ";
		sql = sql + "where t1.rn between ? and ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, startNum);
		pstmt.setInt(2, endNum);
		rs = pstmt.executeQuery();
		cnt = amount - (curPage-1) * 10;
		while(rs.next()){
			//작성일의 날짜 데이터를 특정 문자열 형식으로 변환
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
			<tr>
					<td><%=cnt %></td>
					<td>
					<% if(uid!=null) { %>
						<a href='boardDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a>
					<% } else { %>
						<span><%=rs.getString("title") %></span>
					<% } %>
					</td>
					<td><%=rs.getString("author") %></td>
					<td><%=date %></td>
			</tr>
<%		
			cnt--;
		}
	} catch(Exception e) {
		
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
						</tbody> 
					</table>
				<div class="page_nation_fr">
				<% 
				   for(int i=1;i<=pageCount;i++) { 
					   if(i==curPage) {
				%>
					<span><strong><%=i %></strong>&nbsp;</span>
				<% 
					   } else {
				%>
					<a href="boardList.jsp?curPage=<%=i %>"><%=i %>&nbsp;</a>
				<%		   
					   }
					} 
				%>
				</div>
				<div class="btn_group">
					<% if(uid!=null) { %>
					<a href="boardWrite.jsp" class="btn primary">글쓰기</a>
					<% } %>
				</div>	
			</div>
		</div>
	</section>
</div>
<footer class="ft">
	<%@ include file="footer.jsp" %>
</footer>
</body>
</html>