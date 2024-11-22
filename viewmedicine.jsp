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
   <title>View Medicines</title>
   
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

.text-success {
  color: green;
}

.text-danger {
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
  background-color: darkgreen;
}

.btn-danger {
  display: inline-block;
  padding: 5px 10px;
  font-size: 14px;
  border: none;
  border-radius: 4px;
  background-color:tomato;
  color: #fff;
  cursor: pointer;
}
.btn-danger:hover {
  background-color: red;
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
    
     #message{
        font-weight:bold;
        text-align:center;
        
      }
   </style>
</head>

<body>

<script>
  function openDelete() {
    if (confirm("Are you sure you want to delete the medicine?")) {
        return true;
    }
    else{
    	return false;
    }
  }
  </script>
  
  <header>
    <img src="https://t3.ftcdn.net/jpg/03/24/58/44/240_F_324584485_qtdluDzmBNkJvmntEPlNeG1htwPktgCa.jpg" alt="Logo" class="logo" style="border-radius:50%">
    <br><br><h1 id="title">IDHAYAM HOSPITAL</h1>
    
    <nav id="navbar">
    <div id="links">
      <form action="pharmacistpage" method="get">
        <input type="submit" value="Back To My Page">
      </form>
    </div>
  </nav>
  </header><br><br>
  <div id="message"><h3 style="text-align:center">${message}</h3></div> <br><br>
  <h2 style="text-align:center">MEDICINE LIST:</h2>
  
  <table class="table">
    <tr>
      <th>Medicine No.</th>
      <th>Medicine Name</th> 
      <th>Medicine Price</th>
      <th>Medicine Quantity</th>
      <th>Medicine Type</th>
      <th>Man_Date</th> 
      <th>Exp_Date</th> 
      <th>Update</th> 
      <th>Delete</th>
    </tr>
  
   <%
      
      MedicineService medicineservice = (MedicineService) request.getAttribute("medicineservice"); 
      List<Medicine> medicines = medicineservice.getAllMedicines();
     
 
    	  for(Medicine medicine : medicines) {
     
    %> 
    <tr class="text-center">
      <td><%=medicine.getMedicineId()%></td>
      <td><%=medicine.getMedicineName() %></td>
      <td><%=medicine.getPrice() %></td>
      <td><%=medicine.getQuantity() %></td>
      <td><%=medicine.getType() %></td>
      <td><%=medicine.getManufDate() %></td>
      <td><%=medicine.getExpDate() %></td>
      <td>
          <a href="updatemedicine?medicineId=<%=medicine.getMedicineId()%>">
          <button type="button" class="btn custom-bg text-color">Update</button></a>
           
      </td>
      <td>
        <a href="deletemedicine?medicineId=<%=medicine.getMedicineId()%>" onclick="return openDelete()">
        <button type="button" class="btn-danger custom-bg text-color">Delete</button>
        </a>
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