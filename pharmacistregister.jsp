
<!DOCTYPE html>
<html>
<head>
    <title>Pharmacist Register</title>
    
    <style>
     body{
    background-color:lightblue;
   }
    .register-container {
      display: flex;
      justify-content: center;
      align-items: center;
     
    }
    
    .register-box {
      width: 350px;
      padding: 40px;
      border-radius: 5px;
    }
    
    .register-box input[type="email"],
    .register-box input[type="password"],
    .register-box input[type="text"],
    .register-box input[type="tel"] {
      width:100%;
      padding: 10px;
      margin-bottom: 10px;
      border: none;
      border-radius: 3px;
    }
    
    .register-box input[type="submit"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 3px;
      margin-left:10px;
      background-color: #333;
      color: #fff;
      cursor: pointer;
    }
    
    .register-box input[type="submit"]:hover {
      background-color: #555;
    }
      #message{
        font-weight:bold;
        text-align:center;
        
      }
    </style>
</head>
<body>

   <br><div id="message"><h2>${msg}</h2>
   </div>
<section id="Register-pharm">
    <div class="register-container">
      <div class="register-box">
      <p style="diplay:inline-block;">
      
        <h2 style="text-align:center">PLEASE, REGISTER HERE...</h2>
        <form action="pharmacistregister" method="post">
          <input type="text" placeholder="Name" class="form-control" id="name" name="name" required><br>
        <input type="tel" placeholder="Mobile" class="form-control" id="mobile" name="mobile" required><br>
        <input type="email" placeholder="Email" class="form-control" id="email" name="email" required><br>
        <input type="text" placeholder="Address" class="form-control" id="address" name="address" required><br>
        <input type="text" placeholder="Username" class="form-control" id="username" name="username" required><br>
        <input type="password" placeholder="Password" class="form-control" id="password" name="password" required><br><br>
        <input type="checkbox" class="form-check-input" id="termsConditions" name="termsConditions" required>
        <label class="form-check-label" for="termsConditions" style="color:black" >I agree to the terms and conditions</label><br><br>  
        <input type="submit" value="Register">
        <br><br>
        </form>
        <form action="pharmacistlogin" method="get">
            <input type="submit" value="Go To Login..">
        </form>
      </div>
    </div>
  </section>
  
  </body>
  </html>