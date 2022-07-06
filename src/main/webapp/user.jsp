<%@page import="model.User"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projet gestion d'utilisateur</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<%
Vector<User> liste = (Vector<User>) request.getAttribute("users");

%>

<a href ="saisie" class="btn btn-success">Add</a>

<table class="table table-success table-striped">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">nom</th>
      <th scope="col">prenom</th>
      <th scope="col">email</th>
        <th scope="col">action</th>
    </tr>
  </thead>
  <tbody>
 
<%
for(User u : liste)
{
%>
<tr>
<th scope="row"><%= u.getId() %></th>
<td><%= u.getNom() %></td>
<td><%= u.getPrenom() %></td>
<td><%= u.getEmail() %></td>
<td><a href ="update?id=<%= u.getId()  %>" class="btn btn-warning">Update</a><span/>
<a href ="delete?id=<%= u.getId()  %>" class="btn btn-danger" >Delete</a><span/>
<a href ="liste?id=<%= u.getId()  %>" class="btn btn-primary" >Vu</a> </td>
</tr>


<%
}
%>
  </tbody>
</table>

</body>
</html>