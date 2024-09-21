<%@page import="java.util.List"%>
<%@page import="com.entity.Users"%>
<%@page import="com.entity.Branch"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


    <title>Admin DashBoard</title>
 
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
table{
width: 100%;
}

button{
    margin-top: 30px;
    width: 100px;
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
    <!-- java code -->
<%
Users admin = (Users)session.getAttribute("admin");
List<Branch> listofbranchs = admin.getBranches();

%>

<!-- Html code -->
<h1><%= admin.getId() %> id admin login</h1>
<table border="2px solid " >
<tr>
<th>S.NO</th>
<th>BranchId</th>
<th>BranchName</th>
<th>BranchAddress</th>
<th>BranchPhoneno</th>
<th>BranchEmail</th>
<th>BranchManagerName</th>
<th>UPDATE</th>
<th>DELETE</th>


</tr>

<%
int i = 1;
for (Branch b :listofbranchs ){
%>

<tr>
<td><%= i++ %></td>
<td><%= b.getId() %></td>
<td><%= b.getBranch_name() %></td>
<td><%= b.getAddress() %></td>
<td><%= b.getPhoneno() %></td>
<td><%= b.getEmail() %></td>
<td><%= b.getBranchM_name() %></td>
<td><a href="updateBranch.jsp?branchId=<%= b.getId() %>"><button>UPDATE</button></a></td>
<td><a href="deletebranch?branchId=<%= b.getId() %>"><button>DELETE</button></a></td>

</tr>

<%} %>
</table>

<button><a href="createbranch.jsp"> Create Branch ?</a></button>  
    
</body>
</html>