<%@ page import ="com.hospitalmanagement.model.*"%>
<%@ page import ="com.hospitalmanagement.service.*"%>
<%@ page import ="java.util.*"%>
<%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head> 

 <title>Doctor page</title>
 
 <style>
 
 .image{
   display: grid;
   grid-template-columns:repeat(3,lfr);
   padding:30px 20px;
   grid-column-gap:20px;
   grid-row-gap:30px;
 }
 
 .mine img{

    object-fit:cover;
    cursor:pointer;
    transition:0.2s ease;
    border-radius:50%;
    align-items: center;
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
 }
 
 .mine img:hover{
    transform:scale(1.04);
 }
  
 .image-container img:hover{
    transform:scale(1.04);
 }
 
 
 .mine h2{
    font-family:Times new romen;
    padding:5px;
    text-align:center;
 }
 
  body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color:lightblue;
      }
    
 #title{
     text-shadow: 2px 2px 5px black;
         
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
   #navbar{
    text-align:center;
    direction:rtl;
    
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
    
    footer {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
    }
    .image-container {
            display: flex;
            align-items: center;
            
            
        }

        .image-container img {
            width: 350px; 
            border-radius:50%;
            border-color:black;
        }
        
        h2{
           font-family:Times new romen;
        }
 </style>

</head>

<body>
<header>
  
    <img src="https://t3.ftcdn.net/jpg/03/24/58/44/240_F_324584485_qtdluDzmBNkJvmntEPlNeG1htwPktgCa.jpg" alt="Logo" class="logo" style="border-radius:50%">
    <br><br><h1 id="title">IDHAYAM HOSPITAL</h1>
    
    <nav id="navbar">
    <div id="links">
      <form action="/" method="get">
        <input type="submit" value="Back To Home">
      </form>
    </div>
  </nav>
  </header><br><br>
  <h1 style="text-align:center;font-family:Times new romen;">Welcome Doctor&#128512;!!!</h1><br><br>
  
 <section class="image">
  <div class="mine">
      <a href="mypatient"><img src="https://img.freepik.com/free-photo/young-doctor-supporting-his-patient_1098-2237.jpg?size=626&ext=jpg&ga=GA1.1.816356618.1707192843&semt=sph" alt="patient"></a>
      <h2>MY PATIENT</h2>
  </div>
  
   <div class="mine">
      <a href="myappointment"><img src="https://img.freepik.com/free-photo/smiling-young-female-doctor-wearing-medical-robe-stethoscope-sitting-desk-with-medical-tools-laptop-holding-clipboard-pointing-with-pen-it-isolated_141793-68813.jpg?size=626&ext=jpg&ga=GA1.1.816356618.1707192843&semt=ais" alt="appointment"></a>
      <h2>MY APPOINTMENT</h2>
      </div>
  </section><br><br>
  
  <div class="image-container">
        <a href="allpatient"><img src="https://img.freepik.com/free-photo/happy-doctor-holding-clipboard-with-patients_1098-2176.jpg?size=626&ext=jpg&ga=GA1.1.816356618.1707192843&semt=sph" alt="Image 1" style="margin-left:80px"></a>&nbsp;
        <a href="allappointment"><img src="https://img.freepik.com/free-photo/side-view-patient-filling-consent-document_23-2149941466.jpg?size=626&ext=jpg&ga=GA1.1.816356618.1707192843&semt=ais" alt="Image 2" style="margin-left:80px"></a>&nbsp;
        <a href="allmedicine"><img src="https://img.freepik.com/free-photo/warehouse-pharmacy_1161-231.jpg?size=626&ext=jpg&ga=GA1.1.816356618.1707192843&semt=sph" alt="Image 3" style="margin-left:80px"></a>
    </div>
  
  <div class="image-container">
      <h2 style="margin-left:140px">PATIENT HISTORY</h2>
      <h2 style="margin-left:180px">APPOINTMENT HISTORY</h2>
      <h2 style="margin-left:210px">MEDICINES LIST</h2>
    </div><br><br>
  <footer>
    <p>&copy; 2024 Idhayam Hospital Management System. All rights reserved.</p>
 </footer>
</body>

</html>