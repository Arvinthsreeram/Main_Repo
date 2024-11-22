<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="com.hospitalmanagement.model.*"%>
<%@ page import ="com.hospitalmanagement.service.*"%>
<%@ page import ="java.util.*"%>
<%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Patients</title>
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
    <h1 style="text-align:center">My Patients</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Disease</th>
            <th>Registered Date</th>
            <th>Doctor Id</th>
        </tr>
        <% 
            Doctor doctor = (Doctor)session.getAttribute("active-user");
            PatientService ps = (PatientService) request.getAttribute("patientservice");
            List<Patient> patients = ps.getPatientByDoctorId(doctor.getDoctorId());
            
           
            for (Patient patient : patients) {
        %>
            <tr>
                <td><%= patient.getPatientId() %></td>
                <td><%= patient.getName() %></td>
                <td><%= patient.getAge() %></td>
                <td><%= patient.getGender() %></td>
                <td><%= patient.getEmail() %></td>
                <td><%= patient.getContact() %></td>
                <td><%= patient.getAddress() %></td>
                <td><%= patient.getDisease() %></td>
                <td><%= patient.getRegisteredDate() %></td>
                <td><%= patient.getDoctorId() %></td>
            </tr>
        <% } %>
    </table>
</body><br><br><br>
<footer>
    <p>&copy; 2024 Idhayam Hospital Management System. All rights reserved.</p>
 </footer>
</html>