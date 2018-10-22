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
	<title>ID Card Template Selection</title>
	<link href="css/custom.css" rel='stylesheet' type='text/css'>
	<script src="js/custom.js" ></script>
  </head>
  
  
  <script>
  $(document).ready(function(){
	$("#searchTemplateButton").attr("disabled",true);
	$("#nextButton").attr("disabled",true);
	validateScreenFields();
	
	 $('#enableAdvanceSearch').change(function() {
        if(this.checked) {
        	$("#searchTemplateButton").attr("disabled",false);
        	$("#nextButton").attr("disabled",true);
        }else{
        	$("#searchTemplateButton").attr("disabled",true);
        	validateScreenFields();
        }
    });
	 
	 $("#designId,#state").change(function() {
		 validateScreenFields();
		 enableOrDisableSearchTemplate($('#enableAdvanceSearch').is(":checked"));
	 });
  
  
  });
  function validateScreenFields(){
	  if(	null != $("#designId").val() &&
			  $("#designId").val() != undefined 
			  && null != $("#state").val() 
			  && $("#state").val() != undefined
			  && $("#designId").val() != 'NONE' 
			  && $("#state").val() != 'NONE'){
			 $("#nextButton").attr("disabled",false);
		 }else{
			 $("#nextButton").attr("disabled",true);
		 } 
  }
  
  function enableOrDisableSearchTemplate(checked){
	  if(checked) {
      	$("#searchTemplateButton").attr("disabled",false);
      	$("#nextButton").attr("disabled",true);
      }else{
      	$("#searchTemplateButton").attr("disabled",true);
      	validateScreenFields();
      }
  }
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
    <li class="breadcrumb-item active" aria-current="page">Id Card Template Selection</li>
  </ol>
</nav>
	
<div class = "container maincontainer" >

<div class="card border-primary">
  <div class="card-header card-header-bg">
   <i class="far fa-address-card"></i>
   ID Card Template Selection
  </div>
  <div class="card-body ">
   <form:form action = "idcardFrontView" method = "POST" modelAttribute = "idCard">
   
   
   
   <!-- List of Fields in another page, In order to save in model, keeping the below elements as hidden -->
   		
   <!-- End of Hidden Fields -->
   
   
  
  
  <div class="row">
    <div class="form-group offset-md-2 offset-lg-2 col-md-4 col-lg-4">
      <label for=state class="col-form-label col-form-label-sm">State</label>
      <form:select path="state" class="form-control form-control-sm">
      	<form:option value = "NONE" label = "Choose State"/>
        <form:options  items="${idCard.stateList}"  ></form:options>
        </form:select>
    </div>
    
    <div class="form-group col-md-4 col-lg-4">
      <label for=designId class="col-form-label col-form-label-sm">Design Template</label>
      <form:select  path="designId" class="form-control form-control-sm">
      	<form:option value = "NONE" label = "Choose Design"/>
        <form:options  items="${idCard.designIdList}"  ></form:options>
        </form:select>
    </div>
  </div>
  <div class="row">
    <div class="offset-md-2 offset-lg-2 col-lg-8 col-md-8">
      <div class="custom-control custom-checkbox mr-sm-2 text-muted">
        <input type="checkbox" class="custom-control-input" id="enableAdvanceSearch">
        <label class="custom-control-label" for="enableAdvanceSearch">Advance Search (Search More templates)</label>
      </div>
    </div>
   
  </div>
  
  
  
  <div class  ="row" style = "margin-top:10px;margin-bottom:10px;">
	
  	<div class = "col-md-12 col-lg-12 text-center">
  	<button type="button" class=" btn btn-sm btn-primary" id = "searchTemplateButton">Search Template <!-- <i class="fas fa-search"></i> --></button>
  	<button type="submit" class=" btn btn-sm btn-success" id = "nextButton">Next</button>
  	
  	</div>
  </div>
	
 <div class  ="row" style = "margin-top:10px;margin-bottom:10px;">
	
  	<div class = "col-md-12 col-lg-12 text-center text-muted">
  		(or)
  	</div>
  </div>	
 
 <div class  ="row">
	
  	<div class = "col-md-12 col-lg-12 text-center">
  	<button type="submit" class=" btn btn-sm btn-outline-primary" onclick="form.action='idcardFrontView';"id = "createNewDesign">Create New ID Card Design</button>
  	</div>
  </div>	
 
 	 
  
</form:form>




  </div>
</div>



</div>
	
	
	
	
    
    
  </body>
</html>

