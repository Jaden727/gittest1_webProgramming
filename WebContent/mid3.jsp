<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
  body { font-family: 굴림체; }
  div.container { width: 300px; margin: 20px; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  div.radio label { margin-right: 20px; }
   
</style>
<title>Insert title here</title>
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
<%
String cmd = request.getParameter("cmd");
if (cmd == null) cmd = "one";
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
<%cmd = r2;%>     
     <div>
          <label></label>
          <select name="cmd">
              <option value="one" <%= "one".equals(cmd) ? "selected" : "" %>>one</option>
              <option value="two" <%= "two".equals(cmd) ? "selected" : "" %>>two</option>
              <option value="three" <%= "three".equals(cmd) ? "selected" : "" %>>three</option>
          </select>
      </div> 
</body>
</html>