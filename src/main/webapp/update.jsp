<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<% User user =(User)request.getAttribute("users"); %>

<form action="update" method="POST">

      <div class="form-group">
       <label class="control-label">id  :</label>
       <input type="text" value="<%= user.getId() %>" readOnly name="id" class="form-control"/>
      </div>
      
      <div class="form-group">
       <label class="control-label">Nom  :</label>
       <input type="text" value="<%= user.getNom() %>" required name="nom" class="form-control"/>
      </div>
      <div class="form-group">
       <label class="control-label">Prenom :</label>
       <input type="text" value="<%= user.getPrenom() %>" required name="prenom" class="form-control"/>
      </div>
      
           <div class="form-group">
       <label class="control-label">Email  :</label>
       <input type="text" value="<%= user.getEmail() %>" required name="email" class="form-control"/>
      </div>
      <div>
        <button type="submit" class="btn btn-primary">Update</button>
      </div>
      </form>
      
           
</body>
</html>