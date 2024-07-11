<%@ page import="org.example.exojee3.model.Personne" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="personnes" type="java.util.ArrayList<org.example.exojee3.model.Personne>" scope="request"/>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Exo 3 JEE</title>
</head>
<body>
<div class="container">
    <div class="row">
        <h1 class="col-md-4 offset-md-4">Exercice 3</h1>

        <p>Nous allons créer une servlet qui transfère sa requête vers une page JSP afin d'afficher dans un tableau
            (avec
            Bootstrap) une liste d'au moins trois personnes. Chaque personne sera représentée par au moins :</p>
        <ul>
            <li>Un nom</li>
            <li>Un prenom</li>
            <li>Un age</li>
        </ul>
    </div>
</div>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-6">
            <table class="table table-striped table-hover even-row-color table-bordered">
                <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>Prénom</th>
                    <th>Nom</th>
                    <th>Age</th>
                </tr>
                </thead>
                <tbody>
                <%
                    for (int i = 0; i < personnes.size(); i++) {
                %>
                <tr>
                    <td><%= i+1%>
                    </td>
                    <td><%= personnes.get(i).getPrenom() %>
                    </td>
                    <td><%= personnes.get(i).getNom() %>
                    </td>
                    <td><%= personnes.get(i).getAge() %>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
