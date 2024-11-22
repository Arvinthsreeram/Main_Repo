<!DOCTYPE html>
<html>
<head>
  <title>Pharmacist Login</title>
  
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
     #message{
      text-align:center;  
    }
    
      
  </style>
</head>
<body>
<h1 style="font-family:serif;text-align:center"><q>Pharmacists: the silent healers&#128519;.</q></h1>

    <div class="login-container">
      <div class="login-box">
      <img src="https://img.freepik.com/free-photo/pharmacist-helping-woman-medicine-choice_651396-1235.jpg?size=626&ext=jpg&ga=GA1.1.969157510.1706961288&semt=sph" alt="doctor" width=350px height=200px style="border-radius:50%">
        <h2 style="text-align:center;font-family:Times new romen;">Pharmacist Login</h2>
        <form action="pharmacistlogin" method="post">
          <input type="email" id="email" name="email" placeholder="Enter email id..."><br>
          <input type="password" id="password" name="password" placeholder="Password"><br>
          <input type="submit" value="Login">       
        </form><br>
        <div id="message">${msg}</div><br>
         <form action="pharmacistregister" method="get">
               <input type="submit" value="New User">
           </form>
        
      </div>
    
    </div>
    
 

         
</body>
</html>