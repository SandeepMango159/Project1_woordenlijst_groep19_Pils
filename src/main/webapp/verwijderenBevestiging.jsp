<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        </ul>
    </nav>
</header>
<main>
    <h2>Bevestiging</h2>
    <p class = verwijderen>Ben je zeker dat je de reservering van <%= request.getParameter("naam") %> wil verwijderen?</p>
    <form action="Controller?command=delete&naam=<%= request.getParameter("naam") %>" method="POST">
        <input class = "bevestiging" type="submit" value="Ja"/>
    </form>
    <p class = verwijderen><a href="Controller?command=overview">Cancel</a> indien je de reservering niet wil verwijderen.</p>
</main>
<footer>
    <p>Webontwikkeling 2 1TI6 2020-2021</p>
    <p><a href="#top">Terug naar boven</a></p> <!--Linkt naar de top van de pagina-->
</footer>
</body>
</html>

