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

<title>Update Medicines</title>
<style>

 h3{
  
    text-align:center;
    font-family:Times new romen;
 }
  body{
     background-color:lightblue;
  }
  
     .medicine-container {
      display: flex;
      justify-content: center;
     
    }
    
    .medicine-box {
      width: 350px;
      padding: 40px;
      border-radius: 5px;
       justify-content: center;
    }
    
    
    .medicine-box input[type="text"],
    .medicine-box input[type="number"]{
      width:100%;
      padding: 10px;
      margin-bottom: 10px;
      border: none;
      border-radius: 3px;
      text-align:center;
      font-weight:bold;
    }
    
   
.row {
  display: flex;
  flex-wrap: wrap;
  margin-right: auto;
  margin-left: auto;
  text-align:center;
}


.label {
  font-weight: bold;
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




label{
   font-weight:bold;
   text-align:center;
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
<%
     Medicine medicine = (Medicine)request.getAttribute("medicine");
%>

      <h3>UPDATE MEDICINE</h3><br>
            
      <div id="message"><h3 style="text-align:center">${message}&#128512;!!</h3></div> 
                
      <div class="medicine-container">
      <div class="medicine-box">    
            <form action="updatemed">
            <input type="hidden" name="medicineId" value="<%=medicine.getMedicineId()%>">
            
            <div class="row">   
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Medicine Name</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%= medicine.getMedicineName() %>" readonly required>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Medicine Price</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" id="price" name="price" value="<%=medicine.getPrice()%>" readonly required>
                 </div>
                 
            </div>
            <div class="row">     
                 
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Medicine Quantity</label>
                     <input type="number" class="form-control" aria-describedby="emailHelp"  name="quantity" id="quantity" value="<%=medicine.getQuantity()%>" required>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Medicine Type</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%= medicine.getType()%>" readonly required>
                 </div> 
             </div>   
            
              <div class="row">     
                  <div class="form-group">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Manufacture Date</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%=medicine.getManufDate() %>" required readonly>
                 </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group ml-2">
                     <label style="font-weight:bold;margin-left:100px;" for="email">Expiry Date</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%=medicine.getExpDate() %>" required readonly>
                 </div>
             </div>  
             
             
              <div>
                 <button style="background-color:green;width:80px;margin-left:140px;"><b>Update</b></button>
             </div>
              
             </form> <br>
             <form action="viewmedicine">
               <div>
                 <button style="background-color:green;width:80px;margin-left:140px;"><b>Go Back</b></button>
             </div>
             </form>
             </div>
             </div>
          

</body><br><br><br>

<footer>
    <p>&copy; 2024 Idhayam Hospital Management System. All rights reserved.</p>
 </footer>

</html>