<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("id");
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
    .bread_fr { width: 1200px; margin: 0 auto; font-size:13px;}
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#000; }

    .frm1 { padding: 24px; width: 960px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:900px; border-collapse:collapse; font-size:13px; color:#000; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:1px solid #000; border-right: 1px solid #000; color:#000; background-color:#fff; 
    width:150px; box-sizing:border-box; }
    .tb td { height: 48px; border-bottom:1px solid #000; text-align:left;
     border-right:1px solid #000;
    width:600px; box-sizing:border-box; padding:8px; }
    .tb tr:first-child th { border-top:1px solid #000; }
    .tb tr:first-child td { border-top:1px solid #000; }
    .tb tr:last-child th { border-bottom:1px solid #000; }
    .tb tr:last-child td { border-bottom:1px solid #000; }
	.btn_group { clear:both; width:940px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:13px;
	line-height:24px; border:1px solid #000; text-align:center; }
	.btn_group .btn.primary { background-color:#fff; color:#000; margin-left:240px; }
	.btn_group .btn.primary:hover { background-color:#fff; color:#fff;  }
	.in_data { display:block; float:left; line-height:36px; padding-left:6px; 
	min-width:740px; border-color:transparent; color:#000;}
	textarea { padding:6px; border-color:transparent;}
	.center {text-align:center; font-size:13px; }
	
    </style>
    <link rel="stylesheet" href="./css/footer.css">
	<title>질문하기</title>
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
               <span class="sel">온라인 문의</span>
           </div>
       </div>
       <section class="page">
           <div class="page_wrap">
               <h2 class="page_title">온라인 문의</h2><br>
               <p style="clear:both" class="center">작성하신 문의사항은 3일 이내 답변드립니다</p>
			<%@ include file="connectionPool.conf" %>
			<%
			sql = "select * from membera where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sid);
			//select된 데이터가 없으면, rs=null이 됨
			rs = pstmt.executeQuery();
			//int cnt = pstmt.executeUpdate();
			
			if(rs.next()){
				
			%>
			<div class="frm1">
				<form name="frm" class="frm" action="onlinePro.jsp" method="post">
					<table class="tb">
						<tbody>
							<tr>
								<th><label for="author">이름</label></th>
								<td>
									<input type="text" name="name" id="name" class="in_data" value='<%=rs.getString("name") %>' required>
								</td>
							</tr>
							<tr>
								<th><label for="from">이메일 주소</label></th>
								<td>
									<input type="email" name="from" id="from" class="in_data" value='<%=rs.getString("email") %>' required>
								</td>
							</tr>
							<tr>
								<th><label for="tel">연락처</label></th>
								<td>
									<input type="tel" name="tel" id="tel" class="in_data" value='<%=rs.getString("tel") %>' required>
								</td>
							</tr>
							<tr>
								<th><label for="title">문의사항</label></th>
								<td><input type="text" name="title" id="title" placeholder="문의사항 입력" class="in_data" maxlength="100" required></td>
							</tr>
							<tr>
								<th><label for="content">문의 내용</label></th>
								<td>
									<textarea cols="100" rows="6" name="content" id="content" placeholder="문의 내용 입력" maxlength="600" required class="in_data2"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btn_group">
						<button type="submit" class="btn primary">문의하기</button>
						<a href="qnaList.jsp" class="btn primary">QnA 목록</a>
					</div>
				</form>
			</div>
			<%
			}
			%>
			<%@ include file="connectionClose2.conf" %>
		</div>
	</section>
</div>
<footer class="ft">
	<%@ include file="footer.jsp" %>
</footer>
</body>
</html>