function formValidation()  
{

	var userid = document.registration.userid; 
	var userpass = document.registration.userpass; 
	var username = document.registration.username;  
	var gender = document.registration.gender;
	var useremail = document.registration.useremail;  
        
        if(userid_validation(userid,5,20))  
	      {  
	      	if(passid_validation(userpass,5,20))  
	          {  
		        if(allLetter(username))  
		          {   
			        if(countryselect(gender))  
			          { 
				        if(ValidateEmail(useremail))  
				          {  
	 				      return true;
				          }   
			           }    
		           }  
	           }  
	      }  

 
                           return false;    

};



function userid_validation(userid,mx,my)  
{  
	var uidlen = userid.value.length;  
	if (uidlen == 0 || uidlen >= my || uidlen < mx)  
	   {  
		alert("User Id should not be empty / length be between "+mx+" to "+my);  
		userid.focus();  
		return false;  
	    }  
	    return true;  
} 



function passid_validation(userpass,mx,my)  
{  
	var passid_len = userpass.value.length;  
	if (passid_len == 0 ||passid_len >= my || passid_len < mx)  
	   {  
		alert("Password should not be empty / length be between "+mx+" to "+my);  
		userpass.focus();  
		return false;  
	    }  
	    return true;  
} 



function allLetter(username)  
{   
	var letters = /^[A-Za-z]+$/;  
	if(username.value.match(letters))  
	  {  
		
		return true;  
	  }  
	   else  
	      {  
		  alert('Username must have alphabet characters only');  
		  username.focus();  
		  return false;  
	      }  
}  




function countryselect(gender)  
{  
 if(gender.value == "Default")  
   {  
    alert('Select your Gender from the list');  
    gender.focus();  
    return false;  
    }  
     else  
         {  
         return true;  
         }  
}  




function ValidateEmail(useremail)  
{  
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
   if(useremail.value.match(mailformat))  
     {  
     return true;  
      }  
       else  
          {  
          alert("You have entered an invalid email address!");  
		  useremail.focus();  
		  return false;  
           }  
}



