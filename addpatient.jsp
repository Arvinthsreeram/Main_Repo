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

<title>Add Patients</title>
<style>

 h3{
  
    text-align:center;
    font-family:Times new romen;
 }
  body{
     background-color:lightblue;
  }
  
     .patient-container {
      display: flex;
      justify-content: center;
     
    }
    
    .patient-box {
      width: 350px;
      padding: 40px;
      border-radius: 5px;
    }
    
    
    .patient-box input[type="text"],
    .patient-box input[type="email"], {
      width:100%;
      padding: 10px;
      margin-bottom: 10px;
      border: none;
      font-weight:bold;
      font-size:12px;
      border-radius: 3px;
    }
    .patient-box input[type="submit"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 3px;
      margin-left:10px;
      background-color: #333;
      color: #fff;
      cursor: pointer;
    }
    
    .patient-box input[type="submit"]:hover {
      background-color: #555;
    }
    
   
.row {
  display: flex;
  flex-wrap: wrap;
  margin-right: auto;
  margin-left: auto;
}

.form-group {
  margin-bottom: 1rem;
}

.label {
  font-weight: bold;
}

.form-control {
  display: block;
  width:120px;
  height:20px;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  color:black;
  font-family:Times new romen;
  font-weight:bold;
  line-height: 1.5;
  color: #495057;
  background-color: white;
  background-clip: padding-box;
  border: 1px solid #ced4da;
  border-radius: 0.25rem;
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.form-control{
  color:black;
  font-weight:bold;
}
  footer {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
    }

label{
   font-weight:bold;
   text-align:center;
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
	var inputValue = document.getElementById("age").value;
	
	if(inputValue <= 0) {
		alert("Please enter a valid age.");
		return false;
	}
	return true;
	
}
</script>

            <h3>ADD PATIENTS</h3><br>
            <div id="message"><h3 style="text-align:center">${message}&#128512;!!</h3></div> 
      <div class="patient-container">
      <div class="patient-box">    
            <form action="addpatient" method="post">
            <div class="row">   
                 <div class="form-group">
                     <label for="email">Patient Name</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" name="name" id="name" Placeholder="name" required>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <div class="form-group">
                     <label for="email">Patient Blood Group</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="blood" name="blood" Placeholder="O+ve" required>
                 </div>
                 
            </div>
            <div class="row">     
                 
                 <div class="form-group">
                     <label for="email">Problem Description</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="disease" name="disease"  Placeholder="disease" required>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <div class="form-group">
                     <label for="email">Patient Age</label>
                     <input type="number" class="form-control" aria-describedby="emailHelp" id="age" name="age" Placeholder="age" onclick="return check()" required>
                 </div> 
             </div>   
             <div class="row">     
                <div class="form-group">
                     <label for="email">Patient Gender</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="gender" name="gender"  Placeholder="M/F/O" required>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <div class="form-group">
                     <label for="email">Patient Email</label>
                     <input type="email" class="form-control" aria-describedby="emailHelp" id="email" name="email" Placeholder="email"  required>
                 </div> 
             </div>  
              <div class="row">     
                  <div class="form-group">
                     <label for="email">Patient Contact</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="contact" name="contact" Placeholder="mobile" required>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                     <label for="email">Patient Address</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="address" name="address" Placeholder="address" required>
                 </div>
             </div>  
              <div class="row">     
                  <div class="form-group">
                     <label for="email">Register Date</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="registeredDate" name="registeredDate" Placeholder="dd-mm-yyyy" required>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                     <label for="email">Assign To Doctor(Id)</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="doctorId" name="doctorId" Placeholder="Id" required>
                 </div>
             </div> 
             <input type="checkbox" class="form-check-input" id="termsConditions" name="termsConditions" required>
             <label class="form-check-label" for="termsConditions" style="color:black" >I hereby confirm that patient details are correct</label><br><br>  
             <div class="container text-center">
                 <button class="btn custom-bg text-color" style="background-color:green;width:80px;margin-left:140px;"><b>ADD</b></button>
             </div>
             </form><br>
             <form action="pharmacistpage">
               <div class="container text-center">
                 <button class="btn custom-bg text-color" style="background-color:green;width:80px;margin-left:140px;"><b>Go Back</b></button>
             </div>
             </form>
             </div>
             </div><br><br><br>
              
<footer>
    <p>&copy; 2024 Idhayam Hospital Management System. All rights reserved.</p>
 </footer>
</body>

</html>