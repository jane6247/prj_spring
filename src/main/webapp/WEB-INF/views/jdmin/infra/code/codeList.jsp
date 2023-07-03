<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<%@include file="../../include/includeJdmHeader.jsp"%>
<%@include file="../../include/includeJdmSlideMenu.jsp"%>



    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
              
              <form name="formList" method="post">
					<select name="shOption">
					    <option value="">--선택하세요--</option>
					    <option value="1">Name</option>
					    <option value="2">Gender</option>
					</select>
					
					<input type="text" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>">
					
					<button type="button" class="btn btn-primary" id="btn">Search</button>
	
			</form>
              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">codeGroup_seq</th>
                  </tr>
                </thead>
                <tbody>			
	<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="3">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
	<!-- $(list) 자바에서 넘겨준 객체 이름 --> <!-- var="list" jst1블럭에서 사용할 변수 이름 -->
		<c:forEach items="${list}" var="list" varStatus="status">
		          <tr>
                    <th scope="row"><c:out value="${list.seq }"/></th>
                    <td><a href="codeForm?seq=<c:out value="${list.seq }"/>"><c:out value="${list.name }"/></a></td>
                    <td><c:out value="${list.codeGroup_seq }"/></td>
                  </tr>
		</c:forEach>
	</c:otherwise>
</c:choose>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->
				<a href="codeForm"><button type="button" class="btn btn-primary" id="btn">Add</button></a>
            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

 <%@include file="../../include/includeJdmFooter.jsp"%>
 
  <!-- Vendor JS Files -->
  <script src="/resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/resources/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/resources/assets/vendor/quill/quill.min.js"></script>
  <script src="/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/resources/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
	
$("#btn").on("click", function(){
	
// 	$("form[name=formList]").attr("method","get");
	$("form[name=formList]").attr("action", "/codeList").submit();
	
});
</script>
</body>

</html>