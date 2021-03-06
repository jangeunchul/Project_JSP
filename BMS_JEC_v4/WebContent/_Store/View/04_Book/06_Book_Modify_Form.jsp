<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../Asset/PreSetting.jsp" %>

<!DOCTYPE html><html>
<body onload="b_modifyFocus()" >

	<% System.out.println("  -> 06_Book_Modify_Form.jsp "); %>
	<h3> <center> 도서정보 수정양식 페이지 </center> </h3>
	
	<form action="08_book_modifypro.do " method="post" name="b_modifyform" 
		onsubmit="return b_modifyCheck()" >
		
		<c:set var="n" value="${n}"/>
		
		<input type="hidden" name="b_num" value="${param.b_num}">
		<input type="hidden" name="pageNum" value="${param.pageNum}" >
		
		<table align="center" style="width:50%" >
		
			<tr>
				<th colspan="2" > 수정사항을 입력하세요. </th>
			</tr>
			
			<tr>
				<th width="20%" > 코드 :  </th>
				<td> ${dto.b_num} </td>
			</tr>
			
			<tr>
				<th> 제목 : </th>
				<td> <input value="${dto.title} " type="text" name="b_title" 
					class="input" maxlength="30">
				</td>
			</tr>
			
			<tr>
				<th> 부제 : </th>
				<td> 
				<textarea name="b_subtitle" class="input" cols="40" 
					rows="10"> ${dto.subtitle} </textarea>
				</td>
			</tr>
			
			<tr>
				<th> 저자 : </th>
				<td> <input value="${dto.author}" type="text" name="b_author" 
					class="input" maxlength="30">
				</td>
			</tr>
			
			<tr>
				<th> 가격 : </th>
				<td> <input value="${dto.price}" name="b_price" type="text" 
					class="input" maxlength="30" >
				</td>
			</tr>
	
			<tr>
				<th> 수량 : </th>
				<td> <input value="${dto.quan}" name="b_quan" type="text" 
					class="input" maxlength="30" > </td>
			</tr>
			
			<tr>
				<th> 등록일 : </th>
				<td> ${dto.reg_date} </td>
			</tr>
			
			<tr>
				<th> 종류 : </th>
				<td> <input value="${dto.kind}" name="b_kind" type="text" 
					class="input" maxlength="30" > </td>
			</tr>
			
			<tr>
				<th> 상태 : </th>
				<td> ${dto.state} </td>
			</tr>
			
			
			<tr>
				<th colspan="2">
				
					<input type="submit" value="확인 " class="inputButton" >
					<input type="button" value="취소" class="inputButton" 
						onclick="window.history.back()">
					<input type="button" value="목록보기" class="inputButton" 
						onclick="window.location='09_book_list.do?num=${dto.b_num}&pageNum=${pageNum}'" >
					
				</th>
			</tr>
			
			
		</table>
	</form>
	
</body>
</html>
