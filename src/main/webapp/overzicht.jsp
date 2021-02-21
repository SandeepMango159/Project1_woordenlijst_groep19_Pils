<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl"> <!--Taal zorgt ervoor dat de site werkt met screenreaders-->
<head>
    <meta charset="UTF-8"> <!--Stelt de tekenset in-->
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
            <li><a href="index.jsp">Homepagina</a></li> <!--class kan aan meerdere elementen gelinkt worden-->
            <li><a href="reserveer.jsp">Reserveer nu</a></li>
            <li class = "actievePagina"><a href="overzicht.jsp">Overzicht</a></li> <!--href linkt naar de andere pagina-->
        </ul>
    </nav>
</header>
<main>
    <h2>Overzicht reserveringen</h2>
    <table>
        <tr>
            <th>Naam</th>
            <th>Aantal</th>
            <th>Start verblijf</th>
            <th>Einde verblijf</th>
        </tr>
        <tr>
            <td>Jarne Schreppers</td>
            <td>4</td>
            <td>14/02/2021</td>
            <td>19/02/2021</td>
        </tr>
        <tr>
            <td>Albert Franssen</td>
            <td>3</td>
            <td>20/02/2021</td>
            <td>22/02/2021</td>
        </tr>
        <tr>
            <td>Fien Jansen</td>
            <td>6</td>
            <td>24/02/2021</td>
            <td>27/02/2021</td>
        </tr>
        <tr>
            <td>Robert Decock</td>
            <td>2</td>
            <td>02/03/2021</td>
            <td>07/03/2021</td>
        </tr>
    </table>
</main>
<footer>
    <p>Webontwikkeling 2 1TI6 2020-2021</p>
    <p><a href="#top">Terug naar boven</a></p> <!--Linkt naar de top van de pagina-->
</footer>
</body>
</html>
