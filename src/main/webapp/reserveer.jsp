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
            <li class = "actievePagina"><a href="reserveer.jsp">Reserveer nu</a></li>
            <li><a href="overzicht.jsp">Overzicht</a></li> <!--href linkt naar de andere pagina-->
        </ul>
    </nav>
</header>
<main>
    <section>
        <h2>Reservering</h2>
        <p class = "pFormulier">Via het onderstaande formulier kan u snel en eenvoudig een reservering plaatsen.</p>
        <form id="bestellingForm" action="#"> <!--Action element geeft aan waar de data naartoe wordt verzonden na het invullen van het formulier-->

            <p><label for="naam">Naam:<span>*</span></label> <!--Label geeft aan wat er links staat-->
                <input type="text" name="Naam" id="naam" required placeholder="Jan Jansens"></p> <!--Input geeft aan wat de gebruiken moet ingeven-->

            <p><label for="telefoon">Telefoonnummer:<span>*</span></label>
                <input type="tel" name="Telefoon" id="telefoon" required placeholder="0412345678"></p> <!--Required geeft aan dat dit veld verplicht moet worden ingevuld-->

            <p><label for="aantal">Aantal gasten:<span>*</span></label> <!--Label geeft aan wat er links staat-->
                <input type="text" name="Aantal" id="aantal" required placeholder="8"></p> <!--Input geeft aan wat de gebruiken moet ingeven-->

            <p><label for="startdatum">Startdatum verblijf:<span>*</span></label>
                <input type="datetime-local" name="Datum" id="startdatum" required></p> <!--Name wordt gebruikt voor verwijzingen in Javascript-->

            <p><label for="einddatum">Einddatum verblijf:<span>*</span></label>
                <input type="datetime-local" name="Datum" id="einddatum" required></p> <!--Name wordt gebruikt voor verwijzingen in Javascript-->

            <p><label for="Bevestig"></label>
                <input type="Submit" id="Bevestig" value="Bestel nu"></p> <!--Verzend het formulier-->
        </form>
    </section>
</main>
<footer>
    <p>Webontwikkeling 2 1TI6 2020-2021</p>
    <p><a href="#top">Terug naar boven</a></p> <!--Linkt naar de top van de pagina-->
</footer>
</body>
</html>
