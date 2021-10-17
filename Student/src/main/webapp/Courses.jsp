<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course</title>
 <style>
      
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
html, body{
  display: grid;
  height: 120vh;
  width: 100%;
  place-items: center;
  background: linear-gradient(to right, #99004d 50%,50%);
}
::selection{
  background: #ff80bf;

}
.container{
  background: rgb(241, 241, 241);
  max-width: 350px;
  width: 200%;
  height: 70vh;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.15);
}
.container form .title{
  font-size: 40px;
  font-weight: 600;
  margin: 20px 0 10px 0;
  position: relative;
}
.container form .title:before
{
  content: '';
  position: absolute;
  height: 4px;
  width: 100%;
  left: 0px;
  bottom: -4px;
  border-radius: 5px;
  background: linear-gradient(to right,  #3b5998 0%, #476bb8 100%);
}
.container form .input-box{
  width: 100%;
  height: 45px;
  margin-top: 25px;
  position: relative;
}
.container form .input-box input{
  width: 100%;
  height: 100%;
  outline: none;
  font-size: 16px;
  border: none;
}

.container form .input-box input:focus ~ .underline::after,
.container form .input-box input:valid ~ .underline::after{
  transform: scaleX(1);
  transform-origin: left;
}
.container form .button{
  margin: 40px 0 20px 0;
}
.container .input-box input[type="button"]{
  background: linear-gradient( to left,  #3b5998 0%, #476bb8 100%);
  font-size: 17px;
  color: #fff;
  border-radius: 5px;
  cursor: pointer;
  transition: all 0.3s ease;
}
.container .input-box input[type="button"]:hover{
  letter-spacing: 1px;
  background: linear-gradient( to left,  #99004d 0%, #ff0080 100%);
}



   </style>
</head>
   <body background="1.png"> 
    <div class="container">
      <form action="#">
        <div class="title">Courses</div>
        <div class="input-box underline">
          <div class="input-box button">
          <a href="Course1.jsp">
          <input type="button" name="" value="Course 1 (Computer)"></a>
          </div>
          <div class="input-box button">
            <a href="Course2.jsp">
            <input type="button" name="" value="Course 2(Mechanics)"></a>
          </div>
        <div class="input-box button">
          <a href="Course3.jsp">
          <input type="button" name="" value="Course 3(Civil)"></a>
      
        </div>
      </form>

</body>
</html>