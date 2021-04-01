<%@ page import="domain.model.Woord" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="nl"> <!--Taal zorgt ervoor dat de site werkt met screenreaders-->
<head>
    <meta charset="UTF-8"> <!--Stelt de tekenset in-->
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!--Stelt de zichtbare ruimte van de site in-->
    <title>Groep 19 - Beheerapplicatie woordenlijst</title> <!--Geeft de titel weer in de tab van de browser-->
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
            <li class = "actievePagina"><a href="Controller?command=home">Home</a></li> <!--class kan aan meerdere elementen gelinkt worden-->
            <li><a href="Controller?command=woordToevoegen">Nieuw woord</a></li>
            <li><a href="Controller?command=overview">Toon woordenlijst</a></li>
        </ul>
    </nav>
</header>
<main>
    <article>
        <h2>Beheerapplicatie woordenlijst</h2>
        <p>Met deze applicatie kan je de woordenlijst beheren om in het spelletje Hangman te gebruiken.</p>
        <h3>Statistieken</h3>
        <p>Het aantal woorden in de woordenlijst: <%=request.getAttribute("aantal")%></p>
        <p>Het langste woord in de woordenlijst: <%=request.getAttribute("langste")%></p>
        <p>Het kortste woord in de woordenlijst: <%=request.getAttribute("kortste")%></p>
        <p>Het gemiddeld aantal verschillende letters van de woorden in de woordenlijst: <%=request.getAttribute("tekens")%></p>
    </article>
</main>
<footer>
    <p>Project 1 2020-2021, Groep 19</p>
    <p><a href="#top">Terug naar boven</a></p> <!--Linkt naar de top van de pagina-->
</footer>
</body>
</html>