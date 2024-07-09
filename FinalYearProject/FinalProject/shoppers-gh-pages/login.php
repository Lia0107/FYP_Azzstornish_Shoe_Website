<!DOCTYPE html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="../User/images/logo/logo_white  - Copy.jpeg" type="image/png" />
<style>

/************animation*****/

.circles {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
 
}
.circles li {
    position: absolute;
   z-index:9;
    display: block;
    list-style: none;
    width: 20px;
    height: 20px;
    background: rgba(255, 255, 255, 0.2);
    animation: animate 25s linear infinite;
    bottom: -150px;
}
.circles li:nth-child(1) {
    left: 25%;
    width: 40px;
    height: 40px;
    animation-delay: 0s;
}
.circles li:nth-child(2) {
    left: 10%;
    width: 20px;
    height: 20px;
    animation-delay: 2s;
    animation-duration: 12s;
}
.circles li:nth-child(3) {
    left: 70%;
    width: 20px;
    height: 20px;
    animation-delay: 4s;
}
.circles li:nth-child(4) {
    left: 40%;
    width: 35px;
    height: 35px;
    animation-delay: 0s;
    animation-duration: 18s;
}
.circles li:nth-child(5) {
    left: 65%;
    width: 20px;
    height: 20px;
    animation-delay: 0s;
}
.circles li:nth-child(6) {
    left: 75%;
    width: 30px;
    height: 30px;
    animation-delay: 3s;
}
.circles li:nth-child(7) {
    left: 35%;
    width: 35px;
    height: 35px;
    animation-delay: 7s;
}
.circles li:nth-child(8) {
    left: 50%;
    width: 25px;
    height: 25px;
    animation-delay: 15s;
    animation-duration: 45s;
}
.circles li:nth-child(9) {
    left: 20%;
    width: 15px;
    height: 15px;
    animation-delay: 2s;
    animation-duration: 35s;
}
.circles li:nth-child(10) {
    left: 85%;
    width: 35px;
    height: 35px;
    animation-delay: 0s;
    animation-duration: 11s;
}

@keyframes animate {
  0% {
    transform: translateY(0) rotate(0deg);
    opacity: 1;
    border-radius: 0;
  }

  100% {
    transform: translateY(-1000px) rotate(720deg);
    opacity: 0;
    border-radius: 50%;
  }
}
/***********************************/

/* Import Google font - Poppins */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins",
    sans-serif;
}
body {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background-position: center;
    background-size: cover;
    background-image: url(https://images.unsplash.com/photo-1618005198920-f0cb6201c115?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80);
      background-color: #ececec;
}
.wrapper {
position: relative;
    max-width: 470px;
    width: 100%;
    border-radius: 12px;
    padding: 20px 30px 120px;
    background: rgb(1 197 196 / 51%);
    box-shadow: 0 5px 10px rgba( 0, 0, 0, 0.1 );
    overflow: hidden;
    backdrop-filter: saturate(180%) blur(8px);
}
.form.login {
     position: absolute;
    left: 50%;
    bottom: -86%;
    transform: translateX( -50% );
    width: calc( 100% + 220px );
    padding: 20px 140px;
    border-radius: 50%;
    height: 100%;
    background: #030f4a;
    transition: all 0.6s ease;
    color: white;
    border: 7px solid #31e5e4;
}
.wrapper.active
  .form.login {
  bottom: -15%;
  border-radius: 35%;
  box-shadow: 0 -5px
    10px rgba(0, 0, 0, 0.1);
}
.form
  header {
  font-size: 30px;
  text-align: center;
  color: #fff;
  font-weight: 600;
  cursor: pointer;
}
.form.login
  header {
     color: #fff;
    opacity: 0.6;
}
.wrapper.active
  .form.login
  header {
  opacity: 1;
}
.wrapper.active
  .signup
  header {
  opacity: 0.6;
}
.wrapper
  form {
  display: flex;
  flex-direction: column;
  gap: 20px;
  margin-top: 40px;
}
form
  input,button {
  height: 47px;
    outline: none;
    margin: 6px 0px;
    padding: 0 15px;
    font-size: 15px;
    font-weight: 400;
    color: #333;
    border-radius: 8px;
    background: #fff;
    box-shadow: -10px -10px 14px rgba(255, 255, 255, 0.3), 10px 10px 15px rgba(70, 70, 70, 0.15), inset -10px -10px 15px rgba(255, 255, 255, 0.3), inset 10px 10px 15px rgba(70, 70, 70, 0.15);
    border: 1px solid #05b5b4de;
}
.form.login
  input,button {
  border: 1px solid #303030;
    box-shadow: -10px -10px 14px rgb(27 22 86 / 30%), 10px 10px 15px rgb(61 88 151 / 15%), inset -10px -10px 15px rgb(108 136 233 / 30%), inset 10px 10px 15px rgb(21 48 106 / 15%);
}
.form.login
  input:focus {
  box-shadow: 0
    1px 0
    #ddd;
}

form
  .checkbox {
  display: flex;
  align-items: center;
  gap: 10px;
}
.checkbox
  input[type="checkbox"] {
  height: 16px;
  width: 16px;
  accent-color: #fff;
  cursor: pointer;
}
form
  .checkbox
  label {
  cursor: pointer;
  color: #fff;
}
form a {
  color: #afaeae;
  text-decoration: none;
}
form
  a:hover {
  text-decoration: underline;
}
form
  input[type="submit"],button {
  margin-top: 15px;
  padding: none;
  font-size: 18px;
  font-weight: 500;
  cursor: pointer;
  
}

.form.login
  input[type="submit"],button {
  background: #030F4A;
  color: #fff;
  border: none;
}
input[type="submit"]:hover {
 background-color: #0056b3; 
 color: white;
}
input:hover {
        transform: scale(1.1); 
    }

button{
width:100%;
}
.buttons-container button {
        padding: 10px 20px;
        margin: 5px;
        background-color: #18F2E3;
        color: #fff;
        border: none;
        cursor: pointer;
    }

    .buttons-container button:hover {
        background-color: #0056b3;
        transform: scale(1.1); 
    }
</style><!--dust particel-->
</head>
<body>
<ul class="circles"> <li></li> <li></li> <li></li> <li></li> <li></li> <li></li> <li></li> <li></li> <li></li> <li></li> 
</ul>
<!--Dust particle end--->
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <section class="wrapper my-5 mx-auto">
                <div class="form signup">
                    <header>Login</header>
                    <form action="index.php" method="POST">
                        <input type="text" placeholder="Email address" name="email" required />
                        <input type="password" placeholder="Password"  name="password" required />
                        <input type="submit" value="Log In" name="submit2" />
                    </form>
                </div>
                <div class="form login">
                    <header>&#x25C6;</header> <!--diamond emoji -->
                    <div class="buttons-container">
                        <button onclick="redirectToForgotPassword()">Forgot Password?</button>
                        <button onclick="redirectToAdminLogin()">Admin Login</button>
                        <button onclick="redirectToRegister()">Register Account</button>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
</body>
 <script>const wrapper = document.querySelector(".wrapper"),
    signupHeader = document.querySelector(".signup header"),
    loginHeader = document.querySelector(".login header");
  loginHeader.addEventListener("click", () => {
    wrapper.classList.add("active");
  });
  signupHeader.addEventListener("click", () => {
    wrapper.classList.remove("active");
  });
  
  function redirectToForgotPassword() {
        window.location.href = "../forgot/forgot.php";
    }

    function redirectToAdminLogin() {
        window.location.href = "../adminLogin/admin_login.php";
    }

    function redirectToRegister() {
        window.location.href = "../Registration/register.php";
    }
    
    </script>
    </html>