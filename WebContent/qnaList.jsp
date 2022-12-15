<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
String uid = (String) session.getAttribute("id");
if(uid==null){
	uid ="guest";
}
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String dbid = "test3";
String dbpw = "9876";
String sql = "";
int cnt = 0;
try {
	Class.forName("oracle.jdbc.OracleDriver");
	con = DriverManager.getConnection(url, dbid, dbpw);
	//질문 및 답변 목록
	sql = "select * from qnaa order by parno desc, lev asc, no asc";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
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
	
	.tb tr td .sec1 { padding-left:25px; background-image:url("./img/icon/key.svg"); background-size:20px 20px; background-repeat:no-repeat; background-position:2px center; }
	.tb tr td .sec2 { padding-left:60px; background-image:url("./img/icon/key.svg"); background-size:20px 20px; background-repeat:no-repeat; background-position:30px center; }
	
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
<title>QnA</title>
<link rel="stylesheet" href="./css/footer.css">
</head>
<body>
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
                <span class="sel">QnA</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">QnA</h2>
  				<div class="tb_fr">
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
		while(rs.next()){
			//작성일의 날짜 데이터를 특정 문자열 형식으로 변환
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
			<tr>
					<td>
						<%
							if(rs.getInt("lev")==0) {
								cnt++;
								out.println("<span>"+cnt+"</span>");
							}
						%>
					</td>
					<td>

					<% 
						if(rs.getInt("lev")==0) {
							if(rs.getString("sec").equals("Y")) {
								if(uid.equals(rs.getString("author")) || uid.equals("admin")){
					%>
									<a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>' class="sec1"><%=rs.getString("title") %></a>
					<%
								} else {
					%>	
									<span class="sec1"><%=rs.getString("title") %></span>
					<%
								}
							} else if(rs.getString("sec").equals("N") && uid!="guest"){
					%>	
									<a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a>
					<%
							} else {
					%>	
									<span><%=rs.getString("title") %></span>
					<%
							}
					%>
					<% 
						} else {
							if(rs.getString("sec").equals("Y")) {
								if(uid.equals(rs.getString("author")) || uid.equals("admin")){
					%>
									<a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:60px;" class="sec2"><%=rs.getString("title") %></a>
					<%
								} else {
					%>
									<span style="padding-left:60px;" class="sec2"><%=rs.getString("title") %></span>				
					<%
								}		
							} else if(rs.getString("sec").equals("N") && uid!="guest"){
					%>
								<a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:60px;"><%=rs.getString("title") %></a>						
					<%
							} else {
					%>
						 		<span style="padding-left:60px;"><%=rs.getString("title") %></span>
					<%
							}
						} 
					%>
					</td>
					<td><%=rs.getString("author") %></td>
					<td><%=date %></td>
			</tr>
<%		
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
						</tbody> 
					</table>
					<div class="btn_group">
						<% if(uid!="guest") { %>
						<a href="qnaWrite.jsp" class="btn primary">문의하기</a>
						<% } else { %>
						<p style="clear:both;">회원가입 후 로그인하셔야 문의내용 및 답변을 보실 수 있습니다</p>
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