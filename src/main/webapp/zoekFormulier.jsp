<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
            <li><a href="Controller?command=home">Homepagina</a></li> <!--class kan aan meerdere elementen gelinkt worden-->
            <li><a href="Controller?command=reserveer">Reserveer nu</a></li>
            <li><a href="Controller?command=overview">Overzicht</a></li>
            <li class = "actievePagina"><a href="Controller?command=zoeken">Zoeken</a></li><!--href linkt naar de andere pagina-->
        </ul>
    </nav>
</header>
<main>
    <section>
        <h2>Zoek een reservering op</h2>
        <p class = "pCentraal">U kan eenvoudig een bestaande reservering opzoeken met onderstaand formulier.</p>
        <form method="POST" id = "bestellingForm" action="Controller?command=find" novalidate> <!--Action element geeft aan waar de data naartoe wordt verzonden na het invullen van het formulier-->

            <p><label for="naam">Naam:</label> <!--Label geeft aan wat er links staat-->
                <input type="text" name="naam" id="naam" placeholder="Jan Jansens"></p> <!--Input geeft aan wat de gebruiken moet ingeven-->

            <p><label for="Bevestig"></label>
                <input type="Submit" id="Bevestig" value="Zoeken"></p> <!--Verzend het formulier-->
        </form>
        <p class = verplicht>* Alle velden dienen verplicht te worden ingevuld.</p>
    </section>
</main>
<footer>
    <p>Webontwikkeling 2 1TI6 2020-2021</p>
    <p><a href="#top">Terug naar boven</a></p> <!--Linkt naar de top van de pagina-->
</footer>
</body>
</html>
