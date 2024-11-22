<%@ page import ="java.sql.*"%>
<%@ page import ="java.util.Date"%>
<%@ page import ="java.util.*"%>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import ="java.text.DateFormat"%>
<%@ page import ="com.hospitalmanagement.model.*"%>
<%@ page import ="com.hospitalmanagement.service.*"%>

<!DOCTYPE html>
<html>
<head>
   <title>My Appointment</title>
   
   <style>
   body{
      background-color:lightblue;
   }
    table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            border: 1px solid white;
        }
        tr:nth-child(even) {
            background-color: white;
            }
        th {
            background-color: lightblue;
        }

.custom-bg {
  background-color: #f2f2f2;
}

.text-color {
  color: #333;
}

.text-center {
  text-align: center;
}

.mid-align {
  vertical-align: middle;
}

.success {
  color: green;
}

.danger {
  color: red;
}

.btn {
  display: inline-block;
  padding: 5px 10px;
  font-size: 14px;
  border: none;
  border-radius: 4px;
  background-color: #4CAF50;
  color: #fff;
  cursor: pointer;
}

.btn:hover {
  background-color: #45a049;
}


      header {
      
      background-color: #333;
      color: black;
      padding: 20px;
      text-align: center;
      width : 100%;
      font-family:Times new romen;
      background-attachement:fixed;
      background-size:1400px 420px;
      background-image:url('https://img.freepik.com/free-psd/interior-modern-emergency-room-with-empty-nurses-station-generative-ai_587448-2079.jpg?size=626&ext=jpg&ga=GA1.1.969157510.1706961288&semt=sph');
    }
     a{
     font-weight:bold;
      color:black;
    }
    #links input[type="submit"] {
      padding: 10px;
      border: none;
      border-radius: 3px;
      margin-left:10px;
      color: #fff;
      cursor: pointer;
      background-color: black;
    }
    
     #links input[type="submit"]:hover {
      background-color: gray;
    }
     #navbar{
    text-align:center;
    direction:rtl;
    
    }
       
 #title{
     text-shadow: 2px 2px 5px black;
         
    }
    footer {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
    }
   </style>
</head>
<body>
  <header>
    <img src="https://t3.ftcdn.net/jpg/03/24/58/44/240_F_324584485_qtdluDzmBNkJvmntEPlNeG1htwPktgCa.jpg" alt="Logo" class="logo" style="border-radius:50%">
    <br><br><h1 id="title">IDHAYAM HOSPITAL</h1>
    
    <nav id="navbar">
    <div id="links">
      <form action="doctorpage" method="get">
        <input type="submit" value="Back To My Page">
      </form>
    </div>
  </nav>
  </header><br><br>
  <%
    Date date = new Date();  
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");  
    String strDate= formatter.format(date);  
%>
<div id="message"><h3 style="text-align:center">${message}</h3></div><br><br>
  <h3>Todays Appointment  Date : <%=strDate%> </h3>
  
  <table class="table">
    <tr>
      <th>Appointment No.</th>
      <th>Patient Name</th> 
      <th>Appointment Date</th>
      <th>Appointment Time</th>
      <th>Treatment Status</th>
      <th>Take Action</th> 
    </tr>
  
   <%
      Doctor doctor = (Doctor)session.getAttribute("active-user");
      AppointmentService appointmentservice = (AppointmentService) request.getAttribute("appointmentservice"); 
      List<Appointment> appointments = appointmentservice.getAppointmentsByDoctorIdAndAppointmentDate(doctor.getDoctorId(),strDate );
      PatientService pResource = (PatientService)request.getAttribute("patientservice");
 
    
    	  
    	  for(Appointment appointment : appointments) {
       
          Patient p = pResource.getPatientById(appointment.getPatientId());
        
    %> 
    <tr class="text-center">
      <td class="mid-align"><%=appointment.getAppointmentId()%></td>
      <td class="mid-align"><%=p.getName() %></td>
      <td class="mid-align"><%=appointment.getAppointmentDate() %></td>
      <td class="mid-align"><%=appointment.getAppointmentTime() %></td>
      <td class="mid-align <%if(appointment.getTreatmentStatus().equalsIgnoreCase("Done")) { %>success <% } else if(appointment.getTreatmentStatus().equalsIgnoreCase("Pending")) { %>danger <% }%>"><%=appointment.getTreatmentStatus()%></td>
      <td class="mid-align">
          <a href="viewappointment?appointmentId=<%=appointment.getAppointmentId()%>"><button type="button"
             class="btn custom-bg text-color">View</button></a>
           
      </td>
     
    </tr>
   
    <%
    	  }
      
    %>
</table>

</body><br><br><br>

<footer>
    <p>&copy; 2024 Idhayam Hospital Management System. All rights reserved.</p>
 </footer>

</html>