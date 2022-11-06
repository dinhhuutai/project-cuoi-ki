<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-slide"/>
<c:url var ="SlideURL" value="/admin-slide"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row column_title">
			<div class="col-md-12">
				<div class="page_title" style="display: flex;">
					<a href='<c:url value="/admin-slide?type=list"/>'>
						<h4 style="font-size: 14px; opacity: 0.5;">List Slide</h4>
					</a>
					<h2 style="padding: 0 10px;">></h2>
					<c:if test="${empty model.id}">
						<h4>Add Slide</h4>
					</c:if>

					<c:if test="${not empty model.id}">
						<h4>Update Slide</h4>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<c:if test="${not empty messageResponse}">
		<div class="alert alert-${alert}">
  			${messageResponse}
		</div>
	</c:if>

	<form id="formSubmit" class="row g-3" method="post"
		<c:if test="${empty model.id}">
		action="admin-upload-img-slide?type=edit&message=insert_success"
		</c:if>
		<c:if test="${not empty model.id}">
		action="admin-upload-img-slide?type=list&index=1&message=update_success"
		</c:if>
		enctype="multipart/form-data">
		
		<div class="col-md-12 form-group">
			<label for="inputEmail4" class="form-label f-label">Name</label> <input
				type="text" class="form-control" id="name" name="name"
				value="${ model.name }">
		</div>
		<div class="col-md-6 form-group">
			<label for="inputPassword4" class="form-label f-label">Image</label>
			<input type="file" class="form-control-file" id="image" name="image">
		</div>
		<div class="col-md-12 form-group">
			<label for="inputEmail4" class="form-label f-label">Info</label> <input
				type="text" class="form-control" id="info" name="info"
				value="${ model.info }">
		</div>
		

		<div class="col-12 form-group">
			<c:if test="${not empty model.id}">
				<input type="button" class="btn btn-white btn-warning btn-bold"
					value="Update" id="btnAddOrUpdateNew" />
			</c:if>
			<c:if test="${empty model.id}">
				<input type="button" class="btn btn-white btn-warning btn-bold"
					value="Save" id="btnAddOrUpdateNew" />
			</c:if>
		</div>
		<input type="hidden" value="${ model.id }" id="id" name="id" />
	</form>
	
	

<script>

 
    $('#btnAddOrUpdateNew').click(function(e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();

        $.each(formData, function (index, v) {
            data["" + v.name + ""] = v.value;
        });
        
        
        var today = new Date();
        var date = today.getDate()+'-'+(today.getMonth()+1)+'-'+today.getFullYear();
        var time = today.getHours() + "-" + today.getMinutes() + "-" + today.getSeconds();
        var dateTime = date+'-'+time;
        
        data["datetimeimg"] = dateTime;
        

        if($('input[type="file"]')[0].files.length != 0){
        	var nameImg = dateTime + $('input[type="file"]')[0].files[0].name;
            data["image"] = nameImg;
        }else {
        	data["image"] = "";
        }
        
        var id = $('#id').val();
        
        if(id == "") {
            addSlide(data);
        } else {
            updateSlide(data);
        }
        
        

    });

    function addSlide(data) {
        $.ajax({
            url: "${APIurl}",
            type: 'post',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function(result) {
                $('#formSubmit').submit();
                /* window.location.href = "${ProductURL}?type=edit&id=" + result.id + "&message=insert_success"; */
            },
            error: function(error) {
                window.location.href = "${SlideURL}?type=edit&message=error_system";
            },
        });
    }

    function updateSlide(data) {
        $.ajax({
            url: "${APIurl}",
            type: 'put',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function(result) {
               $('#formSubmit').submit();
                /* window.location.href = "${SlideURL}?type=list&index=1&message=update_success"; */
            },
            error: function(error) {
                window.location.href = "${SlideURL}?type=edit&message=error_system";
            },
        }); 
    }

</script>

</body>
</html>