<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="domain.model.*"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="nl"> <!--Taal zorgt ervoor dat de site werkt met screenreaders-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!--Stelt de zichtbare ruimte van de site in-->
    <title>Groep 19 - Woordenlijst</title> <!--Geeft de titel weer in de tab van de browser-->
    <link rel="icon" type="image/png" href="images/logo.png" sizes="32x32"> <!--Geeft het icoontje weer in de tab van de browser-->
    <link rel="stylesheet" href="css/reset.css"> <!--Linkt met de stylesheet-->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <h1 id = "top">
        <img srcset="images/logoklein.png 200w, images/logo.png 350w" sizes="(max-width: 400px) 200px, 350px" src="images/logo.png" alt="Logo Jarne's Vakantiehuis" class = "logoHeader"> <!--Afhankelijk van de grootte van het scherm zal er een groot of een klein logo worden ingeladen-->
    </h1>
    <nav>
        <ul>
            <li><a href="Controller?command=home">Home</a></li> <!--class kan aan meerdere elementen gelinkt worden-->
            <li><a href="Controller?command=reserveer">Nieuw woord</a></li>
            <li class = "actievePagina"><a href="Controller?command=overview">Toon woordenlijst</a></li>
        </ul>
    </nav>
</header>
<main>
    <h2>Woordenlijst <a href="Controller?command=download">[Download]</a></h2>
    <p>Kies een filter: <a href="Controller?command=overview&filter=beginner">Beginner-woorden</a>
        <a href="Controller?command=overview&filter=expert">Expert-woorden</a>
        <a href="Controller?command=overview">Alle-woorden</a></p>
    <table>
        <thread>
            <tr>
                <th>Nummer</th>
                <th>Woord</th>
                <th>Niveau</th>
        </thread>
        <tbody>
        <% ArrayList<Woord> woorden = (ArrayList<Woord>)request.getAttribute("woorden"); %>
        <%
            int nummer = 0;
            for (Woord w : woorden) {
                nummer++;
        %>
        <tr>
            <td><%=nummer%></td>
            <td><%=w.getWoord()%></td>
            <td><%=w.getNiveau() == null ? "" : w.getNiveau()%></td>
            <td><a href=<%="Controller?command=change&woord=" + w.getWoord()%>>Pas aan</a></td>
            <td><a href="Controller?command=deleteConfirmation&naam=<%= w.getWoord() %>">Verwijder</a></td>
        </tr>
        <% }
        %>
        </tbody>
    </table>
</main>
<footer>
    <p>Project 1 2020-2021, Groep 19</p>
    <p><a href="#top">Terug naar boven</a></p> <!--Linkt naar de top van de pagina-->
</footer>
</body>
</html>
