$(document).ready(function(){
	$(".previewDataLad").click(function(){
        $("#desig").text($("#designId").val());
   });
 	
  
    $('[id^=deleteCopay-]').hover(
  		function () {
  		    $(this).addClass("btn-outline-danger");
  		  },
  		  function () {
  		    $(this).removeClass("btn-outline-danger");
  		  }		
  		
   ); 
    
    $('input[type=radio][name=combinedIdCard]').change(function() {
	    
   	 enableOrDisablePlanDescrption(this.value);
   	 
	});
    
    
   $('[id^=deleteCopay-]').click(function(){
   	  var ids = this.id;
   	  var index = ids.split("-")[1];
   	  var currentCopay = $("#copayLabel-"+index).text();
   	  enableCopay(currentCopay);
   	  var copayElementLength = $('[id^=copayElemenet-]').length;
   	  $("#copayElemenet-"+index).remove();
   	  reassignCopayIds(index,copayElementLength);
   	  disableCopays();
   	  copayElementLength = $('[id^=copayElemenet-]').length;
   	  if(copayElementLength <8){
   		  $("#addCopay").removeAttr("disabled");
   	  }
   	  
    });
   $("#addCopay").click(function(){
   	
   	var currentCopay = $("#copay").val();
   	if(currentCopay != null && currentCopay != undefined && currentCopay != 'NONE'){
   		var index = $('[id^=copayElemenet-]').length;
	    	var newIndex = index+1;
	    	if(index <8){
	    	if(index >0){
	    		var copayElement = $('#copayElemenet-1').clone(true,true).attr("id", "copayElemenet-"+newIndex);
		    	copayElement.find("#copayLabel-1").attr("id","copayLabel-"+newIndex).text(currentCopay);
		    	copayElement.find(".copayMapInput-1").attr("id", 'copayMap\''+currentCopay+'\'').attr("name", 'copayMap[\''+currentCopay+'\']').val("");
		    	copayElement.find("#deleteCopay-1").attr("id","deleteCopay-"+newIndex);
		    	copayElement.insertAfter("#copayElemenet-"+index);
		    	disableCopays();
		    	$("#copay").val("NONE");
		    	if(newIndex === 8){
		    		$("#addCopay").attr("disabled",true);
		    	}
		    }else{
		    	var copayElement = $('#hidden-copayElemenet').clone(true,true).attr("id", "copayElemenet-"+newIndex);
		    	copayElement.find("#hiddencopayLabel").attr("id","copayLabel-"+newIndex).text(currentCopay);
		    	copayElement.find(".copayMapInput-1").attr("id", 'copayMap\''+currentCopay+'\'').attr("name", 'copayMap[\''+currentCopay+'\']').val("");
		    	copayElement.find("#deleteCopay-0").attr("id","deleteCopay-"+newIndex);
		    	copayElement.insertAfter("#copayElemenets");
		    	$('#copayElemenet-'+newIndex).removeAttr('hidden');
		    	disableCopays();
		    	$("#copay").val("NONE"); 
	    	}
   	}
   	}
   }); 
	
});



function enableOrDisablePlanDescrption(combinedIdCardValue){
	  if (combinedIdCardValue == 'YES') {
	    	$("#planDescription2div").show();
	    }
	    else if (combinedIdCardValue == 'NO') {
	    	$('#planDescription2').val("");
	    	$('#planDescription2').removeAttr('value');
	        $("#planDescription2div").hide();
	    }
}


function disableCopays(){
	  $('[id^=copayLabel-]').each(function() {
		 var ida = this.id;
		 currentIteratedCopay = $("#"+ida).text();
		 $("#copay option").each(function() {
  	    var $thisOption = $(this);
  	    if($thisOption.val() === currentIteratedCopay) {
  	        $thisOption.attr("disabled", "disabled");
  	    }
		 });
		
		
	});
}

function enableCopay(currentCopay){
	  $("#copay option").each(function() {
 	    var $thisOption = $(this);
 	    if($thisOption.val() === currentCopay) {
 	        $thisOption.removeAttr("disabled");
 	    }
	 });
}
function reassignCopayIds(index,copayElementLength){
	  
	  var newIndex = parseInt(index, 10)+1;
	  if(index != 1 && index>1){
	  
	  
	   for(var i = newIndex,j=index;i<=copayElementLength;i++,j++){
	   
		    var currentCopay = $("#copayLabel-"+i).text();
		    var copayValue = $(".copayMapInput-1").eq(j-1).val();   
		   
		    var copayElement = $('#copayElemenet-1').clone(true,true).attr("id", "copayElemenet-"+j);
		    copayElement.find("#copayLabel-1").attr("id","copayLabel-"+j).text(currentCopay);
		  	copayElement.find(".copayMapInput-1").attr("id", 'copayMap\''+currentCopay+'\'').attr("name", 'copayMap[\''+currentCopay+'\']').val(copayValue);
		  	copayElement.find("#deleteCopay-1").attr("id","deleteCopay-"+j);
		  	copayElement.insertAfter("#copayElemenet-"+(j-1)); 
		  	$("#copayElemenet-"+i).remove();  
	    } 
	  }else if(index == 1){
		  for(var i = newIndex,j=index;i<=copayElementLength;i++,j++){
			   
			    var currentCopay = $("#copayLabel-"+i).text();
			    var copayValue = $(".copayMapInput-1").eq(j-1).val();   
			   	
			    
			    
			    var copayElement = $('#hidden-copayElemenet').clone(true,true).attr("id", "copayElemenet-"+j);
		    	copayElement.find("#hiddencopayLabel").attr("id","copayLabel-"+j).text(currentCopay);
		    	copayElement.find(".copayMapInput-1").attr("id", 'copayMap\''+currentCopay+'\'').attr("name", 'copayMap[\''+currentCopay+'\']').val(copayValue);
		    	copayElement.find("#deleteCopay-0").attr("id","deleteCopay-"+j);
		    	if(j == 1){
		    		copayElement.insertAfter("#copayElemenets");
		    	}
		    	else{
		    		copayElement.insertAfter("#copayElemenet-"+(j-1)); 
		    	}
		    	$('#copayElemenet-'+j).removeAttr('hidden');	
			  	$("#copayElemenet-"+i).remove();  
		    } 
	  }
}
function idCardProgressDisplay(){
	$("#step1").removeClass("active");
	$("#step1-header").removeClass("activecolor");
	$("#step1-progress").removeClass("progress-bar-active-first");
	$("#step1").addClass("complete");
	$("#step1-header").addClass("completecolor");
	$("#step1-progress").addClass("progress-bar-complete");
	
	
	$("#step2").removeClass("disabled");
	$("#step2-header").removeClass("disablecolor");
	$("#step2-progress").removeClass("progress-bar-disabled");
	$("#step2").addClass("active");
	$("#step2-header").addClass("activecolor");
	$("#step2-progress").addClass("progress-bar-active");
	$("#savebutton").attr("disabled",true);
	//$("#savebutton").attr("hidden",true);
	$("#contactAccountManager").removeAttr("hidden");
	$('.alert').removeAttr("hidden");
	$('.alert').show();
}