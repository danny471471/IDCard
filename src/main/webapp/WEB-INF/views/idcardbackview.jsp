<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link href='webjars/roboto-fontface/0.3.0/roboto-fontface.css' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="/webjars/font-awesome/5.4.1/css/all.css">
	<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>
    <script src="/webjars/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<title>ID Card Design - BackView</title>
	<link href="css/custom.css" rel='stylesheet' type='text/css'>
	<script src="js/custom.js" ></script>
	<script>
	$(document).ready(function(){
		  

		 $(".previewDataLad").click(function(){
			loadPreview('hidden');
	   });
		
	});
	
	</script>
  </head>
  <body>
 
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">
  <img  style = "widht:auto;height:30px;" src = "/imgs/applogo.png"/>
  <span class = "navbarBrandHeading">ID Card Design</span></a>
</nav>   
	<nav aria-label="breadcrumb" >
  <ol class="breadcrumb breadcrumbs">
    <li class="breadcrumb-item"><a href="idCardTemplateSelection">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">Id Card Design</li>
  </ol>
</nav>
	
<div class = "container maincontainer" >

<div class="card border-primary">
  <div class="card-header card-header-bg">
   <i class="far fa-address-card"></i>
   ID Card Design - Back View
   <!-- <i class="far fa-eye float-right"></i>
   <i class="d-none far fa-eye-slash float-right"></i> -->
  </div>
  <div class="card-body ">
  
    <!-- <h5 class="card-subtitle mb-2 text-muted">Back View</h5> -->
    
   <form:form action = "reviewIdCardDesign" method = "POST" modelAttribute = "idCard">
  	
  	 <!-- List of Fields in another page, In order to save in model, keeping the below elements as hidden -->
   		<form:hidden path = "designId"/>
   		<form:hidden path = "description"/>
   		<form:hidden path = "combinedIdCard"/>
   		<form:hidden path = "alphaPrefix"/>
   		<form:hidden path = "pcpRequired"/>
   		<form:hidden path = "planCode"/>
   		<form:hidden path = "planDescription1"/>
   		<form:hidden path = "planDescription2"/>
   		<form:hidden path = "rxBin"/>
   		<form:hidden path = "rxPcn"/>
   		<form:hidden path = "rxLogo"/>
   		<form:hidden path = "copay"/>
   		<form:hidden path = "planCodeList"/>
   		<%-- <form:hidden path = "coPayList"/> --%>
   		<form:hidden path = "isIdCardPerisisted"/>
   		<form:hidden path = "isIdCardActivated"/>
   	
   <p id = "copayElemenets" >
    <c:forEach items="${idCard.copayMap}" var="copayMap" varStatus="status">
    
    <div hidden >
      <label  id = "copayLabel-${(status.index)+1}">${copayMap.key}</label>
      <form:input type = "text" class="copayMapInput-1" path="copayMap['${copayMap.key}']"/>
    </div>

    	</c:forEach>
 </p>
   		
   		
   		
   		
   <!-- End of Hidden Fields -->
  	
  	
  <div class="row">
    <div class="form-group col-md-4 col-lg-4">
      <label for="contractCode" class="col-form-label col-form-label-sm">Contract Code</label>
      <form:input type="text" class="form-control form-control-sm" path="contractCode" />
    </div>
    <div class="form-group col-md-4 col-lg-4">
      <label for="state" class="col-form-label col-form-label-sm">State</label>
      <form:input type="text" class="form-control form-control-sm" path="state" />
    </div>
    <div  class="form-group col-md-4 col-lg-4">
      <label for="productType" class="col-form-label col-form-label-sm">Product Type</label>
      <form:input type="text" class="form-control form-control-sm" path="productType" />
    </div>
  </div>
  <div class="row">
    <div class="form-group col-md-4 col-lg-4">
      <label for="logo" class="col-form-label col-form-label-sm">Logo</label>
      <form:select path="logo" class="form-control form-control-sm">
        <form:option value = "NONE" label = "Choose Logo"/>
        <form:options  items="${idCard.logoList}"  ></form:options>
      </form:select>
    </div>
    
    
    <div class="form-group col-md-4 col-lg-4">
      <label for="tfns" class="col-form-label col-form-label-sm">TFN's</label>
      <form:input type="text" class="form-control form-control-sm" path="tfns" />
    </div>
    <div class="col-md-4 col-lg-4">
    </div>
  </div>
  
  
  
  <div class="row">
     <div class="form-group col-md-4 col-lg-4">
      <label for="claimRouteStateCode" class="col-form-label col-form-label-sm">Claim Route State Code</label>
      <form:input type="text" class="form-control form-control-sm" path="claimRouteStateCode" />
    </div>
    <div class="form-group col-md-4 col-lg-4">
      <label for="memberServices" class="col-form-label col-form-label-sm">Member Services</label>
      <form:input type="text" class="form-control form-control-sm" path="memberServices" />
    </div>
  </div>
  
  <div class="row">
    <div class="form-group col-md-4 col-lg-4">
      <label for="claimsAndAddressEnquiry1" class="col-form-label col-form-label-sm">Claim & Address Enquiry1</label>
      <form:input type="text" class="form-control form-control-sm" path="claimsAndAddressEnquiry1" />
    </div>
    <div class="form-group col-md-4 col-lg-4">
      <label for="nursuryLine" class="col-form-label col-form-label-sm">24/7 Nursury Line</label>
      <form:input type="text" class="form-control form-control-sm" path="nursuryLine" />
    </div>
    <div class="col-md-4 col-lg-4"></div>
  </div>
  
  <div class="row">
    <div class="form-group col-md-4 col-lg-4">
      <label for="claimsAndAddressEnquiry2" class="col-form-label col-form-label-sm">Claim & Address Enquiry2</label>
      <form:input type="text" class="form-control form-control-sm" path="claimsAndAddressEnquiry2" />
    </div>
    <div class="form-group col-md-4 col-lg-4">
      <label for="preCertification" class="col-form-label col-form-label-sm">Pre Certification</label>
      <form:input type="text" class="form-control form-control-sm" path="preCertification" />
    </div>
    <div class="col-md-4 col-lg-4"></div>
  </div>
  
  <div class="row">
     <div class="col-md-4 col-lg-4">
      <fieldset class="row">
    <div class="form-group" style = "margin-left:12px;">
      <legend class="col-form-label col-form-label-sm">LHO URL</legend>
     	<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton path="lhoUrl" value = "YES" class="custom-control-input"/>
		  <label class="custom-control-label" for="lhoUrl1">Yes</label>
		</div>
		<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton path="lhoUrl" value = "NO" class="custom-control-input"/>
		  <label class="custom-control-label" for="lhoUrl2">No</label>
		</div>
    </div>
  </fieldset>
    </div>
    <div class="form-group col-md-4 col-lg-4">
      <label for="pharmacistQuestions" class="col-form-label col-form-label-sm">Pharmacist Questions</label>
      <form:input type="text" class="form-control form-control-sm" path="pharmacistQuestions" />
    </div>
  </div>
  
  <div class="row">
     <div class="col-md-4 col-lg-4">
      <fieldset class="row">
    <div class="form-group" style = "margin-left:12px;">
      <legend class="col-form-label col-form-label-sm">ID Card Sticker</legend>
     	<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton path="idCardSticker" value = "YES" class="custom-control-input"/>
		  <label class="custom-control-label" for="idCardSticker1">Yes</label>
		</div>
		<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton path="idCardSticker" value = "NO" class="custom-control-input"/>
		  <label class="custom-control-label" for="idCardSticker2">No</label>
		</div>
    </div>
  </fieldset>
    </div>
    <div class="form-group col-md-4 col-lg-4">
      <label for="coverageWhileTravelling" class="col-form-label col-form-label-sm">Coverage While Traveling</label>
      <form:input type="text" class="form-control form-control-sm" path="coverageWhileTravelling" />
    </div>
    <div class="col-md-4 col-lg-4 " >
      <fieldset class="row ">
    <div class="form-group float-tight" style = "margin-left:12px;">
      <legend class="col-form-label col-form-label-sm">TagLine State</legend>
     	<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton path="tagLineState" value = "YES" class="custom-control-input"/>
		  <label class="custom-control-label" for="tagLineState1">Yes</label>
		</div>
		<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton path="tagLineState" value = "NO" class="custom-control-input" />
		  <label class="custom-control-label" for="tagLineState2">No</label>
		</div>
    </div>
  </fieldset>
    </div>
    
    
  </div>
  
  <div class  ="row">
	
	
	
  	<div class = "col-md-12 col-lg-12 text-center">
  	<input type = "hidden" id = "previouspagepath" name = "previouspagepath" value = "idcardfrontview" />
   	<button type="submit" onclick="form.action='previouspage';" class=" btn btn-sm btn-outline-primary"><i class="fas fa-arrow-left"></i> Previous</button>
  	<button type="button" class=" btn btn-sm btn-primary previewDataLad" data-toggle="modal" data-load-url = "preview" data-target = "#exampleModal">Preview</button>
  	
  	<button type="submit" class=" btn btn-sm btn-success">Next</button>
  	</div>
  </div>
</form:form>
  </div>
</div>

<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
 aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style = "color:#068BC3">
        <i class="far fa-address-card"></i>
        ID Card Design Preview</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <%@ include file="/WEB-INF/views/preview.jsp" %> 
       </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- End of Modal -->



</div>
  </body>
</html>