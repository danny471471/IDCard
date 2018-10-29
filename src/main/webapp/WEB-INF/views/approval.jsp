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
   <title>ID Card Approval</title>
<link href="css/custom.css" rel='stylesheet' type='text/css'>	
<link href="css/wizard.css" rel='stylesheet' type='text/css'>
<script src="js/custom.js" ></script>
	
<style>
	@media (max-width: 868px) {
	  .container {
	    width: 100%;
	    max-width: none;
	  }
	}
	
	@media (max-width: 990px) {
	  .container {
	    width: 100%;
	    max-width: none;
	  }
	}
</style>
<script>

$(document).ready(function(){
	 var isIdCardPerisisted = $("#isIdCardPerisisted").val();
		if(isIdCardPerisisted ==="YES"){
			idCardProgressDisplay();
		}
		
		
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
    <li class="breadcrumb-item active" aria-current="page">Id Card Design Approval</li>
  </ol>
</nav>
	
<div class = "container maincontainer" >



<div class="card border-primary">
  <div class="card-header card-header-bg">
   <i class="far fa-address-card"></i>
   ID Card - Approval Process
  </div>
  <div class="card-body ">
  <form:form action = "saveIdCardDesign" method = "POST" modelAttribute = "idCard">
<!-- List of Fields in another page, In order to save in model, keeping the below elements as hidden -->
   		<form:hidden path = "designId"/>
   		<form:hidden path = "description"/>
   		<form:hidden path = "combinedIdCard"/>
   		<form:hidden path = "contractCode"/>
   		<form:hidden path = "state"/>
   		<form:hidden path = "productType"/>
   		<form:hidden path = "alphaPrefix"/>
   		<form:hidden path = "pcpRequired"/>
   		<form:hidden path = "planCode"/>
   		<form:hidden path = "planDescription1"/>
   		<form:hidden path = "planDescription2"/>
   		<form:hidden path = "rxBin"/>
   		<form:hidden path = "rxPcn"/>
   		<form:hidden path = "rxLogo"/>
   		<form:hidden path = "copay"/>
   		<form:hidden path = "tfns"/>
   		<form:hidden path = "claimRouteStateCode"/>
   		<form:hidden path = "memberServices"/>
   		<form:hidden path = "claimsAndAddressEnquiry1"/>
   		<form:hidden path = "claimsAndAddressEnquiry2"/>
   		<form:hidden path = "nursuryLine"/>
   		<form:hidden path = "preCertification"/>
   		<form:hidden path = "lhoUrl"/>
   		<form:hidden path = "pharmacistQuestions"/>
   		<form:hidden path = "idCardSticker"/>
   		<form:hidden path = "coverageWhileTravelling"/>
   		<form:hidden path = "tagLineState"/>
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
 


  <div class="row bs-wizard text-center " style="border-bottom:0">
                <div id = "step1" class="  col-lg-2 col-md-2  bs-wizard-step active">
                  <div id = "step1-header" class="text-center bs-wizard-stepnum progressfontsize activecolor">Save Template<br>(Pending)</div>
                  
                  <div class="progress"><div id = "step1-progress" class="progress-bar-active-first"></div></div>
                  <a  class="bs-wizard-dot"></a>
                </div>
                
                <div id = "step2" class=" col-lg-3 col-md-3 bs-wizard-step disabled">
                  <div id = "step2-header" class="text-center bs-wizard-stepnum progressfontsize disablecolor" >Account Manager Approval
                  <br>(Incomplete)
                  </div>
                  <div class="progress"><div id = "step2-progress" class="progress-bar-disabled"></div></div>
                  <a  class="bs-wizard-dot"></a>
                  <div class="bs-wizard-info text-center"></div>
                </div>
                
                <div class=" col-lg-3 col-md-3 bs-wizard-step disabled">
                  <div class="text-center bs-wizard-stepnum progressfontsize disablecolor">ID Card Generation<br>(Incomplete)</span></div>
                  <div class="progress"><div class="progress-bar-disabled"></div></div>
                  <a  class="bs-wizard-dot"></a>
                  <div class="bs-wizard-info text-center"></div>
                </div>
                
                <div class=" col-lg-2 col-md-2 bs-wizard-step disabled">
                  <div class="text-center bs-wizard-stepnum progressfontsize disablecolor">ID Card Validation<br>(Incomplete)</div>
                  <div class="progress"><div class="progress-bar-disabled"></div></div>
                  <a  class="bs-wizard-dot"></a>
                  <div class="bs-wizard-info text-center"></div>
                </div>
                <div class=" col-lg-2 col-md-2 bs-wizard-step disabled">
                  <div class="text-center bs-wizard-stepnum progressfontsize disablecolor">ID Card Distribution<br>(Incomplete)</div>
                  <div class="progress"><div class="progress-bar-disabled"></div></div>
                  <a  class="bs-wizard-dot"></a>
                  <div class="bs-wizard-info text-center"></div>
                </div>
            </div>
     
   
            
  	<div class = "row" style = "margin-top:40px;">
  	<div class = "col-md-12 col-l-12 text-center">
  <input type = "hidden" id = "previouspagepath" name = "previouspagepath" value = "idcardbackview" />
  <button type="submit" onclick="form.action='previouspage';" class=" btn btn-sm btn-outline-primary"><i class="fas fa-arrow-left"></i> Previous</button>
  <button type="button"  class="btn btn-sm btn-primary previewDataLad" data-toggle="modal" data-load-url = "preview" data-target = "#exampleModal" >Preview</button>
  <button type="submit"  class="btn btn-sm btn-success" id = "savebutton" >Save</button>
  <button hidden type="button" id = "contactAccountManager" class=" btn btn-sm btn-primary">Contact Account Manager</button>
  </div>
</div>




</form:form>
</div>
  </div>
  
  <div hidden class="alert alert-success alert-dismissible fade show" style = "margin-top:20px;" role="alert">
  	ID Card Design Saved Successfully
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
  
  
  
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
  
</div>
</div>
	
	
    
   
  </body>
</html>