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

<title>Appointments</title>
<style>

 h3{
  
    text-align:center;
    font-family:Times new romen;
 }
  body{
     background-color:lightblue;
  }
  
     .appointment-container {
      display: flex;
      justify-content: center;
     
    }
    
    .appointment-box {
      width: 350px;
      padding: 40px;
      border-radius: 5px;
       justify-content: center;
    }
    
    
    .appointment-box input[type="text"]{
      width:100%;
      padding: 10px;
      margin-bottom: 10px;
      border: none;
      border-radius: 3px;
      text-align:center;
      font-weight:bold;
    }
    
  

.label {
  font-weight: bold;
}

   
.row {
  display: flex;
  flex-wrap: wrap;
  margin-right: auto;
  margin-left: auto;
  text-align:center;
}

.form-control {
  margin-left:35px;
  display: block;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  color: #495057;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ced4da;
  border-radius: 0.25rem;
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.form-control[readonly] {
  background-color: lightgrey;
  width:100px;
  
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

</style>
</head>

<body>
<%
     DoctorService dResource = (DoctorService)request.getAttribute("doctorservice");
     PatientService pResource = (PatientService)request.getAttribute("patientservice");
     Appointment appointment = (Appointment)request.getAttribute("appointment");
     Patient patient = pResource.getPatientById(appointment.getPatientId());
%>

            <h3>View Appointment</h3><br>
             
                <div class="appointment-container">
      <div class="appointment-box">    
            <form action="updateappointment">
            <input type="hidden" name="appointmentId" value="<%=appointment.getAppointmentId()%>">
            
            <div class="row">   
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Patient Name</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%= patient.getName() %>" readonly required>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Patient Blood Group</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp"  value="<%=patient.getBlood()%>"  readonly required>
                 </div>
                 
            </div>
            <div class="row">     
                 
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Problem Description</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp"  value="<%=patient.getDisease()%>"  readonly required>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Patient Age</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%= patient.getAge()%>" readonly required>
                 </div> 
             </div>   
            
              <div class="row">     
                  <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Appointment Date</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%=appointment.getAppointmentDate() %>" required readonly>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group ml-2">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Appointment Time</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%=appointment.getAppointmentTime() %>" required readonly>
                 </div>
             </div>  
             
             
             <div class="form-group">
                  <label style="font-weight:bold;margin-left:120px" for="email">Treatment Status</label>
                   <select style="width:290px;" name="treatmentStatus" class="form-control">
                       <option value="0">Select Status</option>
                       <option value="Done">Done</option>
                       <option value="Pending">Pending</option>
                       
                   </select>
             </div> <br>
             
              <div class="container text-center">
                 <button class="btn custom-bg text-color" style="background-color:green;width:80px;margin-left:140px;"><b>Update</b></button>
             </div>
              
             </form> <br>
             <form action="myappointment">
               <div class="container text-center">
                 <button class="btn custom-bg text-color" style="background-color:green;width:80px;margin-left:140px;"><b>Go Back</b></button>
             </div>
             </form>
             </div>
             </div>
              

</body><br><br><br>

  
  <footer>
    <p>&copy; 2024 Idhayam Hospital Management System. All rights reserved.</p>
 </footer>

</html>