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
              
            <!-- General Form Elements -->
              <form  name="form" method="post">
                
<c:choose>
	<c:when test="${empty param.seq }">
	           <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">seq</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="seq" id="seq" value="<c:out value="${item.seq }"/>" disabled="disabled" placeholder="Auto Increment Area">
                  </div>
                </div>
	</c:when>
	<c:otherwise>
	           <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">seq</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="seq" id="seq" value="<c:out value="${item.seq }"/>" readonly="readonly">
                  </div>
                </div>
	</c:otherwise>
</c:choose>                

                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="name" id="name" value="<c:out value="${item.name }"/>">
                  </div>
                </div>

                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Submit Button</label>
                  <div class="col-sm-10">
<c:choose>
	<c:when test="${empty param.seq }">
					<button type="button" class="btn btn-success" id="btnSave">Save</button>
	</c:when>
	<c:otherwise>
					<button type="button" class="btn btn-danger" id="btnDelete">Delete</button>
					<button type="button" class="btn btn-danger" id="btnUelete">Uelete</button>
					<button type="button" class="btn btn-primary" id="btnUpdate">Update</button>
	</c:otherwise>
</c:choose>                  
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
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
  <script src="/resources/assets/js/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<scrpt src="/resources/js/validation.js"></scrpt>
<script type="text/javascript">


checkOnlyNum = function(obj) {
	onlyNum = /^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$/;
    if(onlyNum.test($.trim(obj.val())) == false){
        alert("숫자만 입력해 주세요")
        obj.focus();//검색창으로 다시 돌아가게 하기.
        return false;
    } else {
//    	by pass
    }
}

var objName = $("#name");


function validationInst() {
	if (validationUpdt() === false) {
		return false;
	}
}

function validationUpdt() {
	if (checkOnlyNum(objName) === false) {
		return false;
	}
}

$("#btnSave").on("click", function() {
	if (validationInst() === false) {
		return false;
	} $("form[name=form]").attr("action", "/codeGroupInst").submit();
	
});

	
$("#btnUpdate").on("click", function(){
 	$("form[name=form]").attr("action", "/codeGroupUpdt").submit();
});


$("#btnDelete").on("click", function(){
 	$("form[name=form]").attr("action", "/codeGroupDele").submit();
});


$("#btnUelete").on("click", function(){
 	$("form[name=form]").attr("action", "/codeGroupUele").submit();
});


</script>
</body>

</html>