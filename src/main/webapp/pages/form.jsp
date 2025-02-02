<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%--<jsp:useBean id="dogs" scope="request" type="java.util.ArrayList<org.example.exochiens.model.Dog>"/>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajout d'un chien</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.0/font/bootstrap-icons.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h1>Ajouter un chien :</h1>

    <form action="${pageContext.request.contextPath}/dog/add" method="post" class="col-8 offset-2">
        <fieldset>
            <div class="form-floating mb-3">
                <input type="number" class="form-control" id="id" name="id" placeholder="id">
                <label for="id">ID</label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="nom" name="name" placeholder="Nom">
                <label for="nom">Nom</label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="race" name="breed" placeholder="Race">
                <label for="race">Race</label>
            </div>
            <div class="form-floating">
                <input type="date" class="form-control" id="dateN" name="dateOfBirth" placeholder="Date de naissance"
                       required>
                <label for="dateN">Date de naissance</label>
            </div>
            <br>
            <button type="submit" class="btn btn-outline-primary"><i class="bi bi-plus-circle"></i> Ajouter</button>
        </fieldset>
    </form>
</div>

</body>
</html>
