<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
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

    .frm1 { padding: 24px; width: 960px; margin:50px auto; }
    .tb { display:table; margin:0 auto; width:900px; border-collapse:collapse;  font-size:13px; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:1px solid #000; color:#000; background-color:#fff; 
    width:150px; box-sizing:border-box; }
    .tb td { height: 48px; border-bottom:1px solid #000; text-align:left;
     border-right:2px solid #fff;
    width:600px; box-sizing:border-box; padding:8px; }
    .tb tr:first-child th { border-top:2px solid #000; }
    .tb tr:first-child td { border-top:2px solid #000; }
    .tb tr:last-child th { border-bottom:2px solid #000; }
    .tb tr:last-child td { border-bottom:2px solid #000; }
    
    .btn_group { clear:both; width:580px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:13px;
	line-height:24px; border:1.5px solid #000; text-align:center; }
	.btn_group .btn.primary { background-color:transparent; color:#000; margin-left:110px;}
	.btn_group .btn.primary:hover {  border-color: transparent; background-color:#fff; color:#000; transition-duration:0.8s;}
    
	.in_data { display:block; float:left; line-height:36px; padding-left:6px; padding-right:550px; color:#000; border: transparent;}
	textarea { padding:6px; border: transparent;}
	
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
                <span class="sel">FAQ 수정하기</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">FAQ 수정</h2>
			<%@ include file="connectionPool.conf" %>
			<%
				sql = "select * from faqa where no=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, no);
				rs = pstmt.executeQuery();
				if(rs.next()){
			%>
			<div class="frm1">
				<form name="frm" class="frm" action="faqModifyPro.jsp" method="post">
					<input type="hidden" name="no" id="no" value='<%=rs.getInt("no") %>' required>
					<table class="tb">
						<tbody>
							<tr>
								<th><label for="title">제목</label></th>
								<td><input type="text" name="title" id="title" placeholder="제목 입력" class="in_data" value='<%=rs.getString("title") %>' required></td>
							</tr>
							<tr>
								<th><label for="content">내용</label></th>
								<td>
									<textarea cols="100" rows="6" name="content" id="content" class="in_data2"><%=rs.getString("content") %></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				<%
					}
				%>
				<%@ include file="connectionClose2.conf" %>
					<div class="btn_group">
						<button type="submit" class="btn primary">수정</button>
						<a href="faq.jsp" class="btn primary">목록</a>
					</div>
				</form>
			</div>
		</div>
	</section>
</div>
<footer class="ft">
	<%@ include file="footer.jsp" %>
</footer>
</body>
</html>