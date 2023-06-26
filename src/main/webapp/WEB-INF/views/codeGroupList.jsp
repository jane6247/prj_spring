<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!-- <form name="formList"> -->
<form name="formList" method="post">
	<select name="shOption">
	    <option value="">--선택하세요--</option>
	    <option value="1">Dog</option>
	    <option value="2">Cat</option>
	</select>
	
	<input type="text" name="shKeyword">
	
	<button type="button" class="btn btn-primary" id="btn">Search</button>
</form>
<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
	<!-- $(list) 자바에서 넘겨준 객체 이름 --> <!-- var="list" jst1블럭에서 사용할 변수 이름 -->
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.seq }"></c:out>
			<c:out value="${list.name }"></c:out>
			
			<br>
		</c:forEach>
	</c:otherwise>
</c:choose>
<script type="text/javascript">
	
$("#btn").on("click", function(){
	
// 	$("form[name=formList]").attr("method","get");
	$("form[name=formList]").attr("action", "/codeGroupList").submit();
	
});
</script>