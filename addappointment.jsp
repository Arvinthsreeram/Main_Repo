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

<title>Add Appointments</title>
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
  
     .appointment-container {
      display: flex;
      justify-content: center;
     
    }
    
    .appointment-box {
      width: 350px;
      padding: 40px;
      border-radius: 5px;
    }
    
    
    .appointment-box input[type="text"]{
      width:100%;
      padding: 10px;
      margin-bottom: 10px;
      border: none;
      font-weight:bold;
      font-size:12px;
      border-radius: 3px;
      text-align:center;
    }
    .appointment-box input[type="submit"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 3px;
      margin-left:10px;
      background-color: #333;
      color: #fff;
      cursor: pointer;
    }
    
    .appointment-box input[type="submit"]:hover {
      background-color: #555;
    }
    

#message{
        font-weight:bold;
        text-align:center;
        
      }

</style>
</head>

<body>

            <h3>ADD APPOINTMENTS</h3><br>
              <div id="message"><h3 style="text-align:center">${message}&#128512;!!</h3></div> 
      <div class="appointment-container">
      <div class="appointment-box">    
            <form action="addappointment" method="post">
            <div class="row">   
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:120px;" for="email">Assign To Doctor(Id)</label><br>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="doctorId" name="doctorId" Placeholder="DOCTOR ID" required>
                 </div><br>
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:150px;" for="email">Patient ID</label><br>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="patientId" name="patientId" Placeholder="PATIENT ID" required>
                 </div>  <br>     
            </div>
            <div class="row">       
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:120px;" for="email">Appointment Date</label><br>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="appointmentDate" name="appointmentDate"  Placeholder="DD-MM-YYYY" required>
                 </div><br>
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:120px;" for="email">Appointment Time</label><br>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="appointmentTime" name="appointmentTime" Placeholder="HH:MM:SS" required>
                 </div> <br>
             </div>   
          
               <div class="form-group">
                  <label style="font-weight:bold;" for="email">Treatment Status</label>&nbsp;&nbsp;
                   <select name="treatmentStatus" class="form-control">
                       <option value="0">Select Status</option>
                      <option value="Pending">Pending</option> 
                      <option value="Done">Done</option>
                   </select><br>
             </div> <br>
             <input type="checkbox" class="form-check-input" id="termsConditions" name="termsConditions" required>
             <label class="form-check-label" for="termsConditions" style="color:black" >I hereby confirm to assign patients to doctor</label><br><br>  
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