<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <%@ page isELIgnored="false"%>
  <head>
   <link href='<c:url value="/resources/css/sample8.css"></c:url>' rel="stylesheet">
   <style>
a:link, a:visited {
  background-color:#212F3D   ;
  color: white;
  padding: 7px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color:#1F618D;
}
</style>
</head>
<body>
  <h1><font face="Lucida Bright" color="#212F3D ">Products List</font></h1>
		  
<table border="7" width="50%">  

<tr><th>Id</th><th>P_Name</th><th>C_Name</th><th>Price</th><th>Edit::</th></tr>  
  <!-- emps === model attribute in controller -->
  
   <c:forEach var="emp11" items="${emps}">   
   <tr>  
   <td>${emp11.id}</td>  
   <td>${emp11.productname}</td>  
   <td>${emp11.companyname}</td>      
   <td>${emp11.price}</td>     
 <td>  <h3><a href="update">Edit</a></p></h3></td>   
   </tr>  
   </c:forEach>  
   </table>
    <h3><a href="index.jsp">Logout</a></p></h3>    
   </body>