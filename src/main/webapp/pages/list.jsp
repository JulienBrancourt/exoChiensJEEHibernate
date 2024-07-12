<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="dogs" scope="request" type="java.util.ArrayList<org.example.exochiens.model.Dog>"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des chiens</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.0/font/bootstrap-icons.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>

<h2>Liste des chiens</h2>

<% if (dogs.isEmpty()) { %>
<p>Il n'y a pas de chiens à afficher :(</p>
<% } else { %>
<div class="container"></div>
<table class="table text-center align-middle even-row-color table-bordered">
    <thead>
    <tr>
        <th>id</th>
        <th>Nom</th>
        <th>Race</th>
        <th>Date de naissance</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <% for (int i = 0; i < dogs.size(); i++) { %>
    <tr>
        <td><%=dogs.get(i).getId() %>
        </td>
        <td><%= dogs.get(i).getName() %>
        </td>
        <td><%= dogs.get(i).getBreed() %>
        </td>
        <td><%= dogs.get(i).getDateOfBirth().getDayOfMonth() + "/" + dogs.get(i).getDateOfBirth().getMonthValue() + "/" + dogs.get(i).getDateOfBirth().getYear() %>
        </td>
        <td><a href="${pageContext.request.contextPath}/dog/detail?id=${dogs.get(i).getId()}" class="btn btn-primary"><i class="bi bi-plus-circle"></i> Détails</a></td>
    </tr>
    <% } %>
    </tbody>
</table>

</div>
<% } %>

<a href="${pageContext.request.contextPath}/dog/add" class="btn btn-primary"><i class="bi bi-plus-circle"></i> Ajouter un chien</a>

</body>
</html>
