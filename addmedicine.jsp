<%@ page import ="com.hospitalmanagement.model.*"%>
<%@ page import ="com.hospitalmanagement.repository.*"%>
<%@ page import ="com.hospitalmanagement.service.*"%>
<%@ page import ="java.sql.*"%>
<%@ page import ="java.util.Date"%>
<%@ page import ="java.util.*"%>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import ="java.text.DateFormat"%>
<%@ page import ="java.time.LocalDate"%>
<!DOCTYPE html>
<html>
<head>

<title>Add Medicines</title>
<style>

 h3{
  
    text-align:center;
    font-family:Times new romen;
 }
  body{
     background-color:lightblue;
  }
   footer {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
    }
     .medicine-container {
      display: flex;
      justify-content: center;
     
    }
    
    
    .medicine-box {
      width: 350px;
      padding: 40px;
      border-radius: 5px;
    }
    
    
    .medicine-box input[type="text"],
    .medicine-box input[type="number"]{
      width:100%;
      padding: 10px;
      margin-bottom: 10px;
      border: none;
      font-weight:bold;
      font-size:12px;
      border-radius: 3px;
      text-align:center;
    }
    .medicine-box input[type="submit"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 3px;
      margin-left:10px;
      background-color: #333;
      color: #fff;
      cursor: pointer;
    }
    
    .medicine-box input[type="submit"]:hover {
      background-color: #555;
    }
    

#message{
        font-weight:bold;
        text-align:center;
        
      }

</style>
</head>

<body>
<script>
function check(){
	var inputValue = document.getElementById("quantity").value;
	
	if(inputValue < 0) {
		alert("Please enter a positive value.");
		return false;
	}
	return true;
	
}
</script>

            <h3>ADD MEDICINES</h3><br>
            <div id="message"><h3 style="text-align:center">${message}&#128512;!!</h3></div> 
      <div class="medicine-container">
      <div class="medicine-box">    
            <form action="addmedicine" method="post">
            <div class="row">   
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:130px;" for="email">Medicine Name</label><br>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="medicineName" name="medicineName" Placeholder="NAME" required>
                 </div><br>
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:140px;" for="email">Medicine Price</label><br>
                     <input type="number" class="form-control" aria-describedby="emailHelp" id="price" name="price" Placeholder="PRICE" required>
                 </div>  <br>     
            </div>
            <div class="row">       
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:120px;" for="email">Medicine Quantity</label><br>
                     <input type="number" class="form-control" aria-describedby="emailHelp" id="quantity" name="quantity"  Placeholder="QUANTITY" onclick="return check()" required>
                 </div><br>
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:140px;" for="email">Medicine Type</label><br>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="type" name="type" Placeholder="TYPE" required>
                 </div> <br>
             </div>   
              <div class="row">       
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:120px;" for="email">Manufactured Date</label><br>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="manufDate" name="manufDate"  Placeholder="DD-MM-YYYY" required>
                 </div><br>
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:150px;" for="email">Expiry Date</label><br>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="expDate" name="expDate" Placeholder="DD-MM-YYYY" required>
                 </div> <br>
             </div>   
          
              
             <input type="checkbox" class="form-check-input" id="termsConditions" name="termsConditions" required>
             <label class="form-check-label" for="termsConditions" style="color:black" >I hereby confirm that medicine details are correct</label><br><br>  
             <div>
                 <button style="background-color:green;width:80px;margin-left:140px;"><b>ADD</b></button>
             </div>
             </form><br>
             
             <form action="pharmacistpage">
               <div>
                 <button style="background-color:green;width:80px;margin-left:140px;"><b>Go Back</b></button>
             </div>
             </form>
             </div>
             </div><br><br><br>
              
<footer>
    <p>&copy; 2024 Idhayam Hospital Management System. All rights reserved.</p>
 </footer>
</body>

</html>