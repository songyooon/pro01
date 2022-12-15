<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("id");
	int parno = Integer.parseInt(request.getParameter("parno"));
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
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #fff; font-size:13px; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm1 { padding: 24px; width: 960px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:900px; border-collapse:collapse; font-size:13px; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:1px solid #000; border-right: 1px solid #000; color:#000; background-color:#fff; 
    width:150px; box-sizing:border-box; }
    .tb td { height: 48px; border-bottom:1px solid #000; text-align:left;
     border-right:2px solid #fff;
    width:600px; box-sizing:border-box; padding:8px; }
    .tb tr:first-child th { border-top:2px solid #000; }
    .tb tr:first-child td { border-top:2px solid #000; }
    .tb tr:last-child th { border-bottom:2px solid #000; }
    .tb tr:last-child td { border-bottom:2px solid #000; }
	.btn_group { clear:both; width:940px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:13px;
	line-height:24px; border:1.5px solid #000; text-align:center; }
	.btn_group .btn.primary { background-color:#fff; color:#000; margin-left: 200px; }
	.btn_group .btn.primary:hover { background-color:#fff; color:#fff; }
	.in_data { display:block; float:left; line-height:36px; padding-left:6px; 
	min-width:740px; color:#000; border-color:transparent;}
	textarea { padding:6px; color:#000; border-color:transparent;}
    </style>
    <link rel="stylesheet" href="./css/footer.css">
	<title>답변 작성 하기</title>
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
               <span class="sel">답변 작성 하기</span>
           </div>
       </div>
       <section class="page">
           <div class="page_wrap">
               <h2 class="page_title">답변 작성 하기</h2>
			<div class="frm1">
				<form name="frm" class="frm" action="replyWritePro.jsp" method="post">
					<table class="tb">
						<tbody>
							<tr>
								<th><label for="title">답변 제목</label></th>
								<td><input type="text" name="title" id="title" placeholder="제목 입력" class="in_data" autofocus required></td>
							</tr>
							<tr>
								<th><label for="author">작성자</label></th>
								<td>
									<input type="text" name="author" id="author" class="in_data" value='admin' readonly required>
									<input type="hidden" name="lev" id="lev" value="1">
									<input type="hidden" name="parno" id="parno" value='<%=parno %>'>
								</td>
							</tr>
							<tr>
								<th><label for="content">답변 내용</label></th>
								<td>
									<textarea cols="100" rows="15" name="content" id="content"  placeholder="답변 입력" class="in_data2"></textarea>
								</td>
							</tr>
							<tr>
								<th><label for="sec1">비밀글 여부</label></th>
								<td>
									<input type="radio" name="sec" id="sec1" value="N" checked>
									<label for="">공개</label>
									<input type="radio" name="sec" id="sec2" value="Y">
									<label for="">비밀글</label>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btn_group">
						<button type="submit" class="btn primary">글쓰기</button>
						<a href="qnaList.jsp" class="btn primary">목록</a>
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