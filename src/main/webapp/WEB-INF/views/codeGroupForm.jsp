<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form name="form" <c:url value = "insert_page"/> method="post">
		
	<input type="text" name="seq" id="seq" realonly value ="<c:out value="${item.seq}"/>">
	<input type="text" name="name" id="name" value ="<c:out value="${item.name}"/>">
	
	<button type="button" class="btn btn-primary" id="btnDelete">Delete</button>
	<button type="button" class="btn btn-primary" id="btnUelete">Update</button>
	<button type="button" class="btn btn-primary" id="btn">Save</button>
	
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
	
	$("#btn").on("click", function(){
	

	$("form[name=form]").attr("action", "/codeGroupUpdt").submit();
	
});
	
	$("#btnDelete").on("click", function(){
		

		$("form[name=form]").attr("action", "/codeGroupDelt").submit();
		
	});
	
	
</script>