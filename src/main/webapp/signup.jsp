<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


    <title>FoodApp SignUp</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color:#a69eb0;
}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
	background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -80px;
    top: -80px;
}
.shape#tea{
	left: 650px;
	top: 80px;
}
.shape#chef{
	height:400px;
	width:300px;
	border-radius:50px;
	left : -450px;
    padding: 5px;
    border-radius: 10px;	
}


.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -80px;
    bottom: -100px;
}
form{
    height: 550px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 55%;
    left: 50%;
    border-radius: 30px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 22px;
    text-align: center;
}

label{
    display: block;
    margin-top: 20px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 5px;
    font-size: 14px;
    font-weight: 300;
}

option{
 	display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 5px;
    font-size: 14px;
    font-weight: 300;
    color: #000000;
}
select{
background-color: rgba(255,255,255,0.07);
}
::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 30px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.social{
  margin-top: 30px;
  display: flex;
}
.social div{
  background: red;
  width: 150px;
  border-radius: 3px;
  padding: 5px 10px 10px 5px;
  background-color: rgba(255,255,255,0.27);
  color: #eaf0fb;
  text-align: center;
}
.social div:hover{
  background-color: rgba(255,255,255,0.47);
}
.social .fb{
  margin-left: 25px;
}
.social i{
  margin-right: 4px;
}
/* From Uiverse.io by barisdogansutcu */ 
.login {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 0 10px;
  color: white;
  text-shadow: 2px 2px rgb(116, 116, 116);
  text-transform: uppercase;
  cursor: pointer;
  border: solid 2px black;
  letter-spacing: 1px;
  font-weight: 600;
  font-size: 17px;
  background-color: #666666;
  border-radius: 25px;
  position: relative;
  overflow: hidden;
  transition: all 0.5s ease;
}

.login:active {
  transform: scale(0.9);
  transition: all 100ms ease;
}

.login svg {
  transition: all 0.5s ease;
  z-index: 2;
}

.play {
  transition: all 0.5s ease;
  transition-delay: 300ms;
}

.login:hover svg {
  transform: scale(3) translate(50%);
}

.now {
  position: absolute;
  left: 0;
  transform: translateX(-100%);
  transition: all 0.5s ease;
  z-index: 2;
}

.login:hover .now {
  transform: translateX(10px);
  transition-delay: 300ms;
}

.login:hover .play {
  transform: translateX(200%);
  transition-delay: 300ms;
}


    </style>
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape" id="tea">
			<button class="login" id="login">
			    <rect width="56" height="56" x="1" y="1" fill="666666"></rect>
			    <path
			      fill="#e53935"
			      d="M38.67,42H11.52C11.27,40.62,11,38.57,11,36c0-5,0-11,0-11s1.44-7.39,3.22-9.59 c1.67-2.06,2.76-3.48,6.78-4.41c3-0.7,7.13-0.23,9,1c2.15,1.42,3.37,6.67,3.81,11.29c1.49-0.3,5.21,0.2,5.5,1.28 C40.89,30.29,39.48,38.31,38.67,42z"
			    ></path>
			    <path
			      fill="#b71c1c"
			      d="M39.02,42H11.99c-0.22-2.67-0.48-7.05-0.49-12.72c0.83,4.18,1.63,9.59,6.98,9.79 c3.48,0.12,8.27,0.55,9.83-2.45c1.57-3,3.72-8.95,3.51-15.62c-0.19-5.84-1.75-8.2-2.13-8.7c0.59,0.66,3.74,4.49,4.01,11.7 c0.03,0.83,0.06,1.72,0.08,2.66c4.21-0.15,5.93,1.5,6.07,2.35C40.68,33.85,39.8,38.9,39.02,42z"
			    ></path>
			    <path
			      fill="#212121"
			      d="M35,27.17c0,3.67-0.28,11.2-0.42,14.83h-2C32.72,38.42,33,30.83,33,27.17 c0-5.54-1.46-12.65-3.55-14.02c-1.65-1.08-5.49-1.48-8.23-0.85c-3.62,0.83-4.57,1.99-6.14,3.92L15,16.32 c-1.31,1.6-2.59,6.92-3,8.96v10.8c0,2.58,0.28,4.61,0.54,5.92H10.5c-0.25-1.41-0.5-3.42-0.5-5.92l0.02-11.09 c0.15-0.77,1.55-7.63,3.43-9.94l0.08-0.09c1.65-2.03,2.96-3.63,7.25-4.61c3.28-0.76,7.67-0.25,9.77,1.13 C33.79,13.6,35,22.23,35,27.17z"
			    ></path>
			    <path
			      fill="#01579b"
			      d="M17.165,17.283c5.217-0.055,9.391,0.283,9,6.011c-0.391,5.728-8.478,5.533-9.391,5.337 c-0.913-0.196-7.826-0.043-7.696-5.337C9.209,18,13.645,17.32,17.165,17.283z"
			    ></path>
			    <path
			      fill="#212121"
			      d="M40.739,37.38c-0.28,1.99-0.69,3.53-1.22,4.62h-2.43c0.25-0.19,1.13-1.11,1.67-4.9 c0.57-4-0.23-11.79-0.93-12.78c-0.4-0.4-2.63-0.8-4.37-0.89l0.1-1.99c1.04,0.05,4.53,0.31,5.71,1.49 C40.689,24.36,41.289,33.53,40.739,37.38z"
			    ></path>
			    <path
			      fill="#81d4fa"
			      d="M10.154,20.201c0.261,2.059-0.196,3.351,2.543,3.546s8.076,1.022,9.402-0.554 c1.326-1.576,1.75-4.365-0.891-5.267C19.336,17.287,12.959,16.251,10.154,20.201z"
			    ></path>
			    <path
			      fill="#212121"
			      d="M17.615,29.677c-0.502,0-0.873-0.03-1.052-0.069c-0.086-0.019-0.236-0.035-0.434-0.06 c-5.344-0.679-8.053-2.784-8.052-6.255c0.001-2.698,1.17-7.238,8.986-7.32l0.181-0.002c3.444-0.038,6.414-0.068,8.272,1.818 c1.173,1.191,1.712,3,1.647,5.53c-0.044,1.688-0.785,3.147-2.144,4.217C22.785,29.296,19.388,29.677,17.615,29.677z M17.086,17.973 c-7.006,0.074-7.008,4.023-7.008,5.321c-0.001,3.109,3.598,3.926,6.305,4.27c0.273,0.035,0.48,0.063,0.601,0.089 c0.563,0.101,4.68,0.035,6.855-1.732c0.865-0.702,1.299-1.57,1.326-2.653c0.051-1.958-0.301-3.291-1.073-4.075 c-1.262-1.281-3.834-1.255-6.825-1.222L17.086,17.973z"
			    ></path>
			    <path
			      fill="#e1f5fe"
			      d="M15.078,19.043c1.957-0.326,5.122-0.529,4.435,1.304c-0.489,1.304-7.185,2.185-7.185,0.652 C12.328,19.467,15.078,19.043,15.078,19.043z"
			    ></path>
			  </svg>
			  <span class="now">now!</span>
			  <span class="play">Login</span>
			</button>
        
        </div>
        <div class="shape" id="chef"><img src="lego-figure-with-blue-hat-blue-hat_1044943-29910-removebg-preview.png" ></div>
        <div class="shape"></div>
    </div>
    <form action="signup">
        <h3>Sign Up</h3>

        <label for="name" name="name">Name</label>
        <input type="text" placeholder="Full Name" id="username" name="name" required="required">
		<label for="email" name="email">Email</label>
	    <input type="email" placeholder="Email"  name="email" required="required">
        <label for="password">Password</label>
        <input type="password" placeholder="Password" name="password" required="required">
		<label for="password">Role</label>
		<select name="role" id="role" required="required">
		    <option value="">Select Any Options</option>
		    <option value="admin">Admin</option>
		    <option value="branchmanager">Branch Manager</option>
		    <option value="employee">Employee</option>
		</select>
        

        <button>Sign Up</button>
       
    </form>
    
    <script>
        // JavaScript to handle the button click event
        document.getElementById("login").addEventListener("click", function() {
            window.location.href = "login.jsp";
        });
    </script>
</body>
</html>