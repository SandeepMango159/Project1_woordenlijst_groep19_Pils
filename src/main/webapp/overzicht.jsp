<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="domain.model.*"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="nl"> <!--Taal zorgt ervoor dat de site werkt met screenreaders-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!--Stelt de zichtbare ruimte van de site in-->
    <title>Jarne's vakantiehuis - Homepagina</title> <!--Geeft de titel weer in de tab van de browser-->
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
            <li><a href="Controller?command=home">Homepagina</a></li> <!--class kan aan meerdere elementen gelinkt worden-->
            <li><a href="Controller?command=reserveer">Reserveer nu</a></li>
            <li class = "actievePagina"><a href="Controller?command=overview">Overzicht</a></li>
            <li><a href="Controller?command=zoeken">Zoeken</a></li><!--href linkt naar de andere pagina-->
        </ul>
    </nav>
</header>
<main>
    <h2>Overzicht reserveringen</h2>
    <table>
        <thread>
            <tr>
                <th>Naam</th>
                <th>Aantal</th>
                <th>Start verblijf</th>
                <th>Einde verblijf</th>
                <th>Pas aan</th>
                <th>Verwijder</th>
        </thread>
        <tbody>
        <% ArrayList<Reservering> reserveringen = (ArrayList<Reservering>)request.getAttribute("reserveringen"); %>
        <%
            for (Reservering r : reserveringen) {
        %>
            <tr>
                <td><%=r.getNaam()%></td>
                <td><%=r.getAantalGasten()%></td>
                <td><%=r.getStartdatum()%></td>
                <td><%=r.getEinddatum()%></td>
                <td><a>Pas aan</a></td>
                <td><a href="Controller?command=deleteConfirmation&naam=<%= r.getNaam() %>">Verwijder</a></td>
            </tr>
        <% }
        %>
        </tbody>
    </table>
</main>
<footer>
    <p>Webontwikkeling 2 1TI6 2020-2021</p>
    <p><a href="#top">Terug naar boven</a></p> <!--Linkt naar de top van de pagina-->
</footer>
</body>
</html>
