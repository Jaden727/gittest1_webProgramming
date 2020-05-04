<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  body { font-family: 굴림체; }
  div.container { width: 600px; margin: 20px; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
</style>
</head>
<body>
<%
String s1 = request.getParameter("number1");
int number1 = (s1 == null) ? 0 : Integer.parseInt(s1);
int number2 = 1;

String cmd = request.getParameter("cmd");
int result = 0;
if ("+".equals(cmd)) result = number1 + number2;
%>
  <div class="container">
    <form method="get">
   
     <div>
        <label></label> 
        <input type="text" name="number1" value= <%= result %> />
      </div>
      <div>
        <button type="submit" name="cmd" value="+"> ++ </button>
        </div>
     </form>
     </div>
      
</body>
</html>