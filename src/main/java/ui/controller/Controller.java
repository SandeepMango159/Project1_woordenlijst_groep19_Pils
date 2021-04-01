package ui.controller;


import domain.db.Woordenlijst;
import domain.model.DomainException;
import domain.model.Woord;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
    private Woordenlijst db = new Woordenlijst();

    public Controller() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("zit in post");
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("command is " + request.getParameter("command"));
        String command = "home";
        if (request.getParameter("command") != null) {
            command = request.getParameter("command");
        }
        String destination;
        switch (command) {
            case "home":
                destination = home(request, response);
                break;
            case "overview":
                destination = overview(request, response);
                break;
            case "submitWoordToevoegen":
                System.out.println("zit in submit woord toevoegen");
                destination = submitWoordToevoegen(request, response);
                break;
            case "add":
                destination = add(request, response);
                break;
            case "deleteConfirmation":
                destination = getDeleteConfirmation();
                break;
            case "delete":
                destination = delete(request, response);
                break;
            case "woordToevoegen":
                destination = woordToevoegen(request, response);
                break;
            default:
                destination = home(request, response);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String woordToevoegen(HttpServletRequest request, HttpServletResponse response) {
        return "woordToevoegen.jsp";
    }

    private String getDeleteConfirmation() {
        return "verwijderenBevestiging.jsp";
    }

    private String home(HttpServletRequest request, HttpServletResponse response) {
        return "index.jsp";
    }

    private String overview(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("woorden", db.getWoorden());
        return "overzicht.jsp";
    }

    private String submitWoordToevoegen(HttpServletRequest request, HttpServletResponse response) {
        String woord = request.getParameter("woord");
        String niveau = request.getParameter("niveau");
        System.out.println("niveau is " + niveau);
        // Woord mag sowieso niet leeg

        try {

            if (!niveau.isEmpty()) {
                    Woord newWoord = new Woord(woord, niveau);
                    db.voegToe(newWoord);
                    return overview(request, response);
                }
            else {
            Woord newWoord = new Woord(woord);
            db.voegToe(newWoord);
            return overview(request, response);
            }


//            if (woord != null && !woord.isEmpty()) {
//            if (!woord.isEmpty()) {
            // Als niveau niet leeg is
//              if (niveau != null && !niveau.isEmpty()) {
//
            // Als niveau wel leeg is, dan gewoon niks
//                else {
//                    Woord newWoord = new Woord(woord);
//                    db.voegToe(newWoord);
//                    return overview(request, response);
//                }
//        }
//            else {
//                String foutboodschap = "Je woord mag niet leeg zijn";
//                request.setAttribute("foutboodschap", foutboodschap);
//                return "woordToevoegen.jsp";
//            }
        }
        catch (DomainException e) {
            String foutboodschap = e.getMessage();
            request.setAttribute("foutboodschap", foutboodschap);
            return "woordToevoegen.jsp";
        }

    }


    private String add(HttpServletRequest request, HttpServletResponse response) {
        String woord = request.getParameter("woord");
        String niveau = request.getParameter("niveau");
        if (!woord.isEmpty() && !niveau.isEmpty()) {
            Woord nieuwWoord = new Woord(woord, niveau);
            db.voegToe(nieuwWoord);
            return overview(request, response);
        } else {
            return "woordToevoegen.jsp";
        }
    }

    private String delete(HttpServletRequest request, HttpServletResponse response) {
        String woord = request.getParameter("woord");
        db.verwijder(woord);
        return overview(request, response);
    }



}

