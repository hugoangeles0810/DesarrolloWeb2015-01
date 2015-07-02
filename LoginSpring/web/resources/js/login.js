$(document).ready(function(){
   $("#error-container").hide(); 
    
   $("#login-form").submit(function(e){
        if ($("#usuario").val().trim()===""){
            $("#error-msg").html("Campo USUARIO requerido.");
            $("#error-container").show();
            e.preventDefault();
            return;
        }
        
        if ($("#password").val().trim()===""){
            $("#error-msg").html("Campo PASSWORD requerido.");
            $("#error-container").show();
            e.preventDefault();
            return;
        }
        
   });
   
   $("#btn-close-error").click(function(){
       $("#error-container").hide();
   });
});