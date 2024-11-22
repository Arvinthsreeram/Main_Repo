
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Login</title>
    
    <style>
     body{
    background-color:lightblue;
   }
    .login-container {
      display: flex;
      justify-content: center;
      align-items: center;
     
    }
    
    .login-box {
      width: 350px;
      padding: 40px;
      border-radius: 5px;
    }
    
    .login-box input[type="email"],
    .login-box input[type="password"] {
      width:100%;
      padding: 10px;
      margin-bottom: 10px;
      border: none;
      border-radius: 3px;
    }
    
    .login-box input[type="submit"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 3px;
      margin-left:10px;
      background-color: #333;
      color: #fff;
      cursor: pointer;
    }
    
    .login-box input[type="submit"]:hover {
      background-color: #555;
    }
      #reglink,#message{
      text-align:center;
      font-family:Times new romen;   
   }
    </style>
</head>
<body>
<h1 style="font-family:Times new romen;text-align:center"><q>Healing patients the right way...&#128524;</q></h1>
<section id="login-doctor">
    <div class="login-container">
      <div class="login-box">
      <p style="diplay:inline-block;">
      <img src="https://img.freepik.com/premium-photo/photo-female-doctor-physician-medical-uniform-with-stethoscope-cross-arms-chest-smiling_812426-26424.jpg?w=740" alt="doctor" width=350px height=200px style="border-radius:50%">
        <h2 style="text-align:center;font-family:Times new romen">Doctor Login</h2>
        <form action="doctorlogin" method="post">
          <input type="email" id="email" name="email" placeholder="Enter email id..." required><br>
          <input type="password" id="password" name="password" placeholder="Password" required><br>
          <input type="submit" value="Login"><br>
        </form><br>
        <div id="message">${msg}</div><br>
          <form action="doctorRegister" method="get">
               <input type="submit" value="New User">
           </form>
      </div>
    </div>
  </section>

  </body>
  </html>