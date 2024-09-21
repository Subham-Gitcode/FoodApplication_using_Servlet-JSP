<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>FoodApp Login page</title>
 
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
    background-color: #a69eb0;
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
    left: -80px;
    top: -80px;
}
.shape#tea{
	left: 550px;
	top: 150px;
}
.shape#chef{
	height:400px;
	width:300px;
	border-radius:50px;
	
	left : -450px;
	
}

.shape:last-child{
    
    right: -80px;
    bottom: -100px;
}
form{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
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
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
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
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 50px;
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
// vapor
.coffeeBlock {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 250px;
}

.coffee {
    background-image: url("./images/tea.png");
    height: 20px;
    border-radius: 50%;
    z-index: 99;
    position: relative;
    margin: 0 auto -100px;
    width: 233px;
}

.lid {
    background-color: #fff;
    height: 20px;
    border-radius: 50%;
    border: 8px solid #ddd;
    z-index: 9;
    position: relative;
    box-shadow: 0 1px 3px 0 rgb(0 0 0 / 51%);
}

.cup {
    margin: -18px auto 0;
    background:url('./images/tea.png');
    height: 100px;
    width: 500%;
    max-width: 240px;
    /* border-bottom-left-radius: 30%;
    border-bottom-right-radius: 30%; */
    clip-path: polygon(50% 250%, 0 0, 100% 0);
}

.logo {
    max-width: 100px;
    position: absolute;
    top: 35%;
    left: 28%;
}

.bottom {
    background-color: #fff;
    height: 20px;
    border-radius: 50%;
    z-index: 9;
    position: relative;
    width: 144px;
    margin: -10px auto 0;
}

.vapour {
    position: relative;
    display: flex;
    z-index: 1;
    padding: 0 20px;
    justify-content: center;
}

.vapour span {
    position: relative;
    bottom: 50px;
    display: block;
    margin: 0 2px 50px;
    min-width: 8px;
    height: 120px;
    
    border-radius: 50%;
    animation: animate 5s linear infinite;
    opacity: 0;
    filter: blur(10px);
    animation-delay: calc(var(--v) * -0.5s);
}

.coffeeBlock:hover{
    .vapour span{
        background: #ffffff;
    }
}

@keyframes animate {
    0% {
        transform: translateY(0) scaleX(1);
        opacity: 0;
    }
    15% {
        opacity: 1;
    }
    50% {
        transform: translateY(-150px) scaleX(5);
    }
    95% {
        opacity: 0;
    }
    100% {
        transform: translateY(-300px) scaleX(10);
    }
}

    </style>
</head>
<body>
    <div class="background">
        <div class="shape"><img src="https://cdn.pixabay.com/photo/2016/06/01/12/59/pizza-1428931_960_720.png" height="200px" width="200px"></div>
        <div class="shape" id="tea">
        	<div class="coffeeBlock">
        		<div class="coffee">
	            <div class="vapour">
	                <span style="--v:1;"></span>
	                <span style="--v:2;"></span>
	                <span style="--v:5;"></span>
	                <span style="--v:4;"></span>
	                <span style="--v:6;"></span>
	                <span style="--v:19;"></span>
	                <span style="--v:7;"></span>
	                <span style="--v:8;"></span>
	                <span style="--v:9;"></span>
	                <span style="--v:10;"></span>
	                <span style="--v:11;"></span>
	                <span style="--v:18;"></span>
	            </div>
            
        </div>
        <img class ="teacup" src="tea.png" alt=""> 
    </div>
        
        </div>
        <div class="shape" id="chef"><img src="dd-removebg.png" ></div>
        <div class="shape"><img src="https://static.vecteezy.com/system/resources/thumbnails/042/841/592/small_2x/indian-cuisine-on-transparent-background-png.png" height="200px" width="200px"></div>
    </div>
    <form action="login">
        <h3>Login Here</h3>

        <label for="username">Username</label>
        <input type="text" placeholder="Email or Phone" id="username" value="" name="email">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password" value="" name="password">

        <button>Log In</button>
        <div class="social">
          <div class="go" for="back"><a href="signup.jsp">« Back</a></div>
          <div class="fb"><a href="#">forgot?</a></div>
        </div>
    </form>
</body>
</html>