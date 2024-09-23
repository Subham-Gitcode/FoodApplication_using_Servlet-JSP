<%@page import="com.entity.Branch"%>
<%@page import="com.dao.BranchDao"%>
</html>

<head>
<title>Update Existing Branch</title>
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
   height: 600px;
    width: 500px;
    background-color: rgba(255, 255, 255, 0.13);
    position: absolute;
    transform: translate(-50%, -50%);
    top: 55%;
    left: 50%;
    border-radius: 30px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255, 255, 255, 0.1);
    box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
    padding: 35px 35px;
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
    margin-top: 16px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 30px;
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
    margin-top: 20px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 15px;
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
<%
    // Retrieve branch ID from the request
    int branchId = Integer.parseInt(request.getParameter("branchId"));
    
    // Fetch branch details using branch ID
    BranchDao branchDao = new BranchDao();
    Branch branch = branchDao.getBranchById(branchId);
%>


<div class="background">
        
    <form action="updateBranch">
        <h3>Update Existing Branch</h3>
		<input type="text" name="branchId" value="<%= branch.getId() %>"  readonly="readonly"/>
        <label for="branchname" name="branchname">Branch Name</label>
        <input type="text" placeholder="Branch Name" id="branchname" name="branchname" value="<%= branch.getBranch_name() %>">
		<label for="address" name="address">Address</label>
	    <input type="text" placeholder="Address"  name="address" value="<%= branch.getAddress() %>">
        <label for="email">Email id</label>
        <input type="email" placeholder="Email" name="email" value="<%= branch.getEmail() %>">
		<label for="phone-no">Phone-No</label>
		<input type="tel" placeholder="Phone No" name="phone-no" value="<%= branch.getPhoneno() %>">
		<label for="bmn">Branch Manager</label>
		<input type="text" placeholder="Branch Manager" name="bmn" value="<%= branch.getBranchM_name() %>">        

        <button type="submit">Update</button>
        <button type="reset" id="cancel">Cancel </button>
       
    </form>
    
    <script>
        // JavaScript to handle the button click event
        document.getElementById("cancel").addEventListener("click", function() {
            window.location.href = "admindashboard.jsp";
        });
    </script>


</body>
</html>
