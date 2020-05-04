<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://kit.fontawesome.com/68abb170e0.js" crossorigin="anonymous"></script>
<style>
  div.container { width: 600px; margin: 20px auto; }
  div.radio label { margin-right: 20px; }
  input {  }
  select { width: 50px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }
  table { width: 300px; border-collapse: collapse; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
</style>
</head>
<body>
  <% request.setCharacterEncoding("utf-8"); %>
<%

String name = request.getParameter("userid");
String c1 = request.getParameter("checkbox1");
String W_checked = "true".equals(c1) ? "여자" : "";
String M_checked = "true".equals(c1) ? "남자" : "";



%>
<div class="container">
  <form method="post">
    <h1>회원 등록</h1>
    <div style=width: 200px>
      <label >이름</label></br>
      <input type="text" class="text" name="userid" />
    </div>
    <div>
 </br>
    <div class="checkbox">
      <label>
      <label><input type="checkbox" name="남_checked" value="남" <%= M_checked %> /> 남자</label></br>
      <label><input type="checkbox" name="여_checked" value="여" <%= W_checked %> /> 여자</label></br>
    </div>
      </label>
    </div>
       <div>
      <button type="submit">회원등록</button>
    </div>
  </form>
     </br>
  <table>
    <thead>
    </thead>
    <tbody>
      <tr>
      	<td>이름</td>
        <td><%= name%></td>
      </tr>
      <tr>
        <td>성별</td>
        <td><%= c1 %></td>
      </tr>
    </tbody>
  </table>    
</div>
</body>
</html>