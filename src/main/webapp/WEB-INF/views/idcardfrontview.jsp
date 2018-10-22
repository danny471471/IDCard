<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<title>ID Card Design- FrontView</title>
	<link href="css/custom.css" rel='stylesheet' type='text/css'>
	<script src="js/custom.js" ></script>
  </head>
  
  
  <script>
  $(document).ready(function(){
	  disableCopays();
	  enableOrDisablePlanDescrption($("input[name='combinedIdCard']:checked").val());
	});
  </script>
  
  <body>
 
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">
  <img  style = "widht:25px;height:30px;" src = "https://mbtskoudsalg.com/images/anthem-blue-cross-logo-png-6.png"/>
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
   ID Card Design - Front View
   <!-- <i class="far fa-eye float-right"></i>
   <i class="d-none far fa-eye-slash float-right"></i> -->
  </div>
  <div class="card-body ">
   <form:form action = "idcardBackView" method = "POST" modelAttribute = "idCard">
   
   
   
   <!-- List of Fields in another page, In order to save in model, keeping the below elements as hidden -->
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
   <!-- End of Hidden Fields -->
   
   
  <div class="row">
    <div class="form-group col-md-4 col-lg-4">
      <label for="designId" class="col-form-label col-form-label-sm">Design Id</label>
      <form:input type="text" class="form-control form-control-sm" path = "designId"/>
    </div>
    <div class="form-group col-md-4 col-lg-4">
      <label for="description" class="col-form-label col-form-label-sm">Description</label>
      <form:input type="text" class="form-control form-control-sm" path = "description" />
    </div>
    <div class="col-md-4 col-lg-4">
     
     <fieldset class="row">
    <div class="form-group" style = "margin-left:12px;">
      <legend class="col-form-label col-form-label-sm">Combined Id Card</legend>
     	<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton   path = "combinedIdCard" class="custom-control-input" value = "YES"/>
		  <label class="custom-control-label" for="combinedIdCard1">Yes</label>
		</div>
		<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton   path = "combinedIdCard" class="custom-control-input" value = "NO"/>
		  <label class="custom-control-label" for="combinedIdCard2">No</label>
		</div>
    </div>
  </fieldset>
    </div>
  </div>
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
      <label for=logo class="col-form-label col-form-label-sm">Logo</label>
      <form:select path="logo" class="form-control form-control-sm">
      	<form:option value = "NONE" label = "Choose Logo"/>
        <form:options  items="${idCard.logoList}"  ></form:options>
        </form:select>
    </div>
    
    
    <div class="form-group col-md-4 col-lg-4">
      <label for="alphaPrefix" class="col-form-label col-form-label-sm">Alpha Prefix</label>
      <form:input type="text" class="form-control form-control-sm" path="alphaPrefix"/>
    </div>
    <div class="col-md-4 col-lg-4">
     
     <fieldset class="row">
    <div class="form-group" style = "margin-left:12px;">
      <legend class="col-form-label col-form-label-sm">PCP Required</legend>
     	<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton path = "pcpRequired" value = "YES" class="custom-control-input"/>
		  <label class="custom-control-label" for="pcpRequired1">Yes</label>
		</div>
		<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton  path = "pcpRequired" value = "NO" class="custom-control-input"/>
		  <label class="custom-control-label" for="pcpRequired2">No</label>
		</div>
    </div>
  </fieldset>
     
     
    </div>
  </div>
  
  
  
  <div class="row">
    <div class="form-group col-md-4 col-lg-4">
       <label for="planCode" class="col-form-label col-form-label-sm">Plan Code</label>
		      <form:select path="planCode" class="form-control form-control-sm">
		        <form:option value = "NONE" label = "Choose Plan Code"/>
        		<form:options  items="${idCard.planCodeList}"  ></form:options>
		      </form:select>
    </div>
    <div class="form-group col-md-4 col-lg-4">
      <label for="planDescription1" class="col-form-label col-form-label-sm">Plan Description1</label>
      <form:input type="text" class="form-control form-control-sm" path="planDescription1" />
    </div>
    <div class="form-group col-md-4 col-lg-4" id = "planDescription2div">
      <label for="planDescription2" class="col-form-label col-form-label-sm">Plan Description2</label>
      <form:input type="text" class="form-control form-control-sm" path="planDescription2" />
    </div>
  </div>
  
  <div class="row">
    <div class="form-group col-md-4 col-lg-4">
      <label for="rxBin" class="col-form-label col-form-label-sm">Rx Bin</label>
      <form:input type="text" class="form-control form-control-sm" path="rxBin" />
    </div>
    <div class="form-group col-md-4 col-lg-4">
      <label for="rxPcn" class="col-form-label col-form-label-sm">Rx PCN</label>
      <form:input type="text" class="form-control form-control-sm" path="rxPcn" />
    </div>
    <div class="col-md-4 col-lg-4">
     
     <fieldset class="row">
    <div class="form-group" style = "margin-left:12px;">
      <legend class="col-form-label col-form-label-sm">Rx Logo</legend>
     	<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton  path="rxLogo" value = "YES" class="custom-control-input"/>
		  <label class="custom-control-label" for="rxLogo1">Yes</label>
		</div>
		<div class="custom-control custom-radio custom-control-inline">
		  <form:radiobutton  path="rxLogo" value = "NO" class="custom-control-input" />
		  <label class="custom-control-label" for="rxLogo2">No</label>
		</div>
    </div>
  </fieldset>
     
     
    </div>
  </div>
  
  <div class="row">
    <div class="form-group col-md-4 col-lg-4">
       <label for="copay" class="col-form-label col-form-label-sm">Copays<span class = "text-muted"> (Add upto 8 Copays) </span> </label>
		     <div class="input-group">
			  <form:select path="copay" class="form-control form-control-sm">
		        <form:option value = "NONE" label = "Choose Copays"/>
        		<form:options  items="${idCard.coPayList}"  ></form:options>
		      </form:select>
			  
			  <div class="input-group-append">
			    <button class="btn btn-outline-primary form-control-sm" type="button" id = "addCopay" style="padding-top:-10px;"
			    data-toggle="tooltip" data-placement="top" title="Add Copay">
			    <i class="align-top fas fa-plus-circle"></i></button>
			  </div>
			</div>
			
    </div>
    <p id = "copayElemenets">
    <c:forEach items="${idCard.copayMap}" var="copayMap" varStatus="status">
    
    <div  class="form-group col-md-4 col-lg-4" id = "copayElemenet-${(status.index)+1}">
      <label  id = "copayLabel-${(status.index)+1}" class="col-form-label col-form-label-sm" >${copayMap.key}</label>
      <div class="input-group">
       <div style="padding-top:-10px;" class="input-group-prepend ">
    	<span class="input-group-text form-control-sm">$</span>
		</div>
      <form:input type="text" class="form-control form-control-sm copayMapInput-1" path="copayMap['${copayMap.key}']"  />
       <div class="input-group-append">
			    <button class="btn btn-outline-default form-control-sm deleteCopay" type="button" id = "deleteCopay-${(status.index)+1}"
			    data-toggle="tooltip" data-placement="top" title="Delete Copay"
			    style="padding-top:-10px;">
			    <i class="align-top fas fa-trash"></i>
			    </button>
			  </div>
			</div>
    </div>

    	</c:forEach>
 </p>
 
 <!-- The below code will not be visible in front end, This code is specifically needs to clone when we have zero copays  -->
 <div  hidden class="form-group col-md-4 col-lg-4" id = "hidden-copayElemenet">
      <label  id = "hiddencopayLabel" class="col-form-label col-form-label-sm" ></label>
      <div class="input-group">
       <div style="padding-top:-10px;" class="input-group-prepend ">
    	<span class="input-group-text form-control-sm">$</span>
		</div>
      <form:input type="text" class="form-control form-control-sm copayMapInput-1" path=""  />
       <div class="input-group-append">
			    <button class="btn btn-outline-default form-control-sm hiddendeleteCopay" type="button" id ="deleteCopay-0"
			    data-toggle="tooltip" data-placement="top" title="Delete Copay"
			    style="padding-top:-10px;">
			    <i class="align-top fas fa-trash"></i>
			    </button>
			  </div>
			</div>
    </div>
 <!-- End of Hidden Element -->
 
 
    
  </div>
  
  
  <div class  ="row">
	
  	<div class = "col-md-12 col-lg-12 text-center">
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

