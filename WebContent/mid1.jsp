<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  body { font-family: 굴림체; }
  div.container { width: 400px; margin: 20px; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  table { width: 200px; border-collapse: collapse; height: 100px }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
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
        <input type="text" name="number1" value= <%= number1 %> />
        <button type="submit" name="cmd" value="*"> 단 </button>
      </div>
      </form>
     </div>
      
<table>
<% for (int i=1; i <= 9; ++i) { 
     out.println("  <tr>");
     for (int j=0; j <= 0; ++j) {
         out.println("    <td>" + number1 + "&nbsp; X &nbsp;" + i + "=" + (number1 * i) + "</td></br>");
     }
     out.println("  </tr>");
   }
%>
</table>
      
</body>
</html>