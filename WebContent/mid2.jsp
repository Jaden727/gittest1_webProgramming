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
   div.radio label { margin-right: 20px; }
   
</style>
</head>
<body>
<%
String r1 = request.getParameter("radio_cmd");
if (r1 == null) r1 = "one";
%>
<%
String r2 = request.getParameter("radio1");
String one_checked = "one".equals(r2) ? "checked" : "";
String two_checked = "two".equals(r2) ? "checked" : "";
String three_checked = "three".equals(r2) ? "checked" : "";
%>
  <div class="container">
    <form method="get">
      <div class="radio">
       <label></label>
      <label><input type="radio" name="radio1" value="one" <%= one_checked %> /> one</label>
      <label><input type="radio" name="radio1" value="two" <%= two_checked %> /> two</label>
      <label><input type="radio" name="radio1" value="three" <%= three_checked %> /> three</label>
      
    </div>
      
    
      
       <div>
        <label></label> 
        <input type="text" name="cmd" value= <%= r2 %> />
      </div>
      <div>
        <button type="submit" name="cmd" value="ok"> Ok </button>
        </div>
     </form>
     </div>     
      
      
      
</body>
</html>