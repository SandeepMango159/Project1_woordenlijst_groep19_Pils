<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl"> <!--Taal zorgt ervoor dat de site werkt met screenreaders-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!--Stelt de zichtbare ruimte van de site in-->
    <title>Groep 19 - Woord toevoegen</title> <!--Geeft de titel weer in de tab van de browser-->
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
            <li class = "actievePagina"><a href="Controller?command=woordToevoegen">Nieuw woord</a></li>
            <li><a href="Controller?command=overview">Toon woordenlijst</a></li>
        </ul>
    </nav>
</header>
<main>

    <h2>Woord Toevoegen</h2>

    <form method="post" action="Controller?command=submitWoordToevoegen" >

        <p>
            <%
                if (request.getAttribute("foutboodschap") != null ) { %>
            <%=request.getAttribute("foutboodschap")%>
            <%  }%>
        </p>

        <p>
            <label for="woord">Woord *:</label>
            <input type="text" id="woord" name="woord" placeholder="Woord" required value=<%= request.getAttribute("woord") != null ? request.getAttribute("woord") : ""%>>
        </p>

        <p>
        <p>
            <label for="niveau">Niveau:</label>
            <select id="niveau" name="niveau"  >
                <option value="" <%= request.getAttribute("niveau") != null && request.getAttribute("niveau").equals("") ? "selected" : ""%>>Kies</option>
                <option value="beginner" <%= request.getAttribute("niveau") != null && request.getAttribute("niveau").equals("beginner") ? "selected" : ""%>>beginner</option>
                <option value="expert" <%= request.getAttribute("niveau") != null && request.getAttribute("niveau").equals("expert") ? "selected" : ""%>>expert</option>
            </select>
        </p>

        </p>
        <!--Verzend het formulier-->
        <input type="hidden" name="command" value="submitWoordToevoegen" >
        <p>
            <label for="Bevestig"></label>
            <input type="submit" id="Bevestig" value="Bevestig">
        </p>

        <p>
            <i>* Verplichte velden.</i>
        </p>
        <p><a href="Controller?command=overview">Terug naar woordenlijst</a></p>
    </form>



</main>
<footer>
    <p>Project 1 2020-2021, Groep 19</p>
    <p><a href="#top">Terug naar boven</a></p> <!--Linkt naar de top van de pagina-->
</footer>
</body>
</html>
