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
	<title>ID Card Template Selection</title>
	<link href="css/custom.css" rel='stylesheet' type='text/css'>
	<script src="js/custom.js" ></script>
  </head>
  
  
  <script>
  $(document).ready(function(){
	$("#searchTemplateButton").attr("disabled",true);
	$("#nextButton").attr("disabled",true);
	$("#createNewDesign").attr("disabled",true);
	$("#state").val("NONE");
	$("#designId").val("NONE");
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
	 
	 $("#designId").change(function() {
		 validateScreenFields();
		 enableOrDisableSearchTemplate($('#enableAdvanceSearch').is(":checked"));
	 });
  	
	 $("#state").change(function() {
		 var designIdOptions = $("#designId");
		 jQuery.ajax({
	            url: "getDesignIdsByState?stateCode=" + $("#state").val(),
	            success: function (data) {
	            	designIdOptions.empty();
	            	designIdOptions.append(new Option("Choose Design","NONE"));
	            	$.each(data, function() {
	            		designIdOptions.append(new Option(this, this));
	            	});
	            },
	            error: function (data) {
	            	designIdOptions.empty();
	            	designIdOptions.append(new Option("Choose Design","NONE"));
	            }
	        });
		 validateScreenFields();
		 enableOrDisableSearchTemplate($('#enableAdvanceSearch').is(":checked"));
	 });
	
  
  });
  function validateScreenFields(){
	  if(null != $("#designId").val() &&
			  $("#designId").val() != undefined 
			  && null != $("#state").val() 
			  && $("#state").val() != undefined
			  && $("#designId").val() != 'NONE' 
			  && $("#state").val() != 'NONE'){
			 $("#nextButton").attr("disabled",false);
		 }else{
			 $("#nextButton").attr("disabled",true);
		 }
	  if(null != $("#state").val() 
			  && $("#state").val() != undefined
			  && $("#state").val() != 'NONE'){
		  $("#createNewDesign").attr("disabled",false);
	  }else{
		  $("#createNewDesign").attr("disabled",true);
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
  <img  style = "widht:auto;height:30px;" src = "/imgs/applogo.png"/>
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
   <form:form action = "idcardFrontView" method = "POST" modelAttribute = "idCardTemplate">
   

  
  <div class="row">
    <div class="form-group offset-md-2 offset-lg-2 col-md-4 col-lg-4">
      <label for=state class="col-form-label col-form-label-sm">State</label>
      <form:select path="state" class="form-control form-control-sm">
      	<form:option value = "NONE" label = "Choose State"/>
        <form:options  items="${idCardTemplate.stateList}"  ></form:options>
        </form:select>
    </div>
    
    <div class="form-group col-md-4 col-lg-4">
      <label for=designId class="col-form-label col-form-label-sm">Design Template</label>
      <form:select  path="designId" class="form-control form-control-sm">
      	<form:option selected = "true" value = "NONE" label = "Choose Design"/>
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
  	
  	<button type="submit" class=" btn btn-sm btn-outline-primary" onclick="form.action='idcardFrontViewNewDesign';" id = "createNewDesign">Create New ID Card Design</button>
  	</div>
  </div>	
 
 	 
  
</form:form>




  </div>
</div>



</div>
	
	
	
	
    
    
  </body>
</html>

