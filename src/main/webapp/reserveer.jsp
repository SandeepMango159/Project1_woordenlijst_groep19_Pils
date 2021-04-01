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
            <li class = "actievePagina"><a href="Controller?command=reserveer">Nieuw woord</a></li>
            <li><a href="Controller?command=overview">Toon woordenlijst</a></li>
        </ul>
    </nav>
</header>
<main>
    <section>
        <h2>Reserveren</h2>
        <p class = "pCentraal">Via het onderstaande formulier kan u eenvoudig een woord toevoegen.</p>
        <form method="POST" id = "bestellingForm" action="Controller?command=add" novalidate> <!--Action element geeft aan waar de data naartoe wordt verzonden na het invullen van het formulier-->

            <p><label for="woord">Woord *:</label> <!--Label geeft aan wat er links staat-->
                <input type="text" name="woord" id="woord" placeholder="Woord"></p> <!--Input geeft aan wat de gebruiken moet ingeven-->

            <p><label for="niveau">Niveau:</label> <!--Label geeft aan wat er links staat-->
                <input type="text" name="niveau" id="niveau" placeholder="null"></p> <!--Input geeft aan wat de gebruiken moet ingeven-->

            <p><label for="Bevestig"></label>
                <input type="Submit" id="Bevestig" value="Bevestig"></p> <!--Verzend het formulier-->
        </form>
        <p class = verplicht>* Deze velden dienen verplicht te worden ingevuld.</p>
    </section>
</main>
<footer>
    <p>Project 1 2020-2021, Groep 19</p>
    <p><a href="#top">Terug naar boven</a></p> <!--Linkt naar de top van de pagina-->
</footer>
</body>
</html>
