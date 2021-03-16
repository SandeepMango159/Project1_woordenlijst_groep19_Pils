package ui.controller;


import domain.model.Reservering;
import domain.db.ReserveringDB;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
    private ReserveringDB db = new ReserveringDB();

    public Controller() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
            case "add":
                destination = add(request, response);
                break;
            case "deleteConfirmation":
                destination = getDeleteConfirmation();
                break;
            case "delete":
                destination = delete(request, response);
                break;
            case "reserveer":
                destination = reserveer(request, response);
                break;
            case "zoeken":
                destination = zoeken(request, response);
                break;
            case "find":
                destination = find(request, response);
                break;
                default:
                destination = home(request, response);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String find(HttpServletRequest request, HttpServletResponse response) {
        String naam=request.getParameter("naam");
        String destination="";
        if (naam==null) {
            return "nietGevonden.jsp";
        }
        else {
            Reservering reservering = db.vind(naam);
            if (reservering==null) {
                return "nietGevonden.jsp";
            }
            else {
                request.setAttribute("reservering", reservering);
                return "gevonden.jsp";
            }
        }
    }

    private String reserveer(HttpServletRequest request, HttpServletResponse response) {
        return "reserveer.jsp";
    }

    private String zoeken(HttpServletRequest request, HttpServletResponse response) {
        return "zoekFormulier.jsp";
    }

    private String getDeleteConfirmation() {
        return "verwijderenBevestiging.jsp";
    }

    private String home(HttpServletRequest request, HttpServletResponse response) {
        Reservering meesteGasten = db.getMeesteGasten();
        request.setAttribute("meesteGasten", meesteGasten);
        return "index.jsp";
    }

    private String overview(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("reserveringen", db.getAlle());
        return "overzicht.jsp";
    }

    private String add(HttpServletRequest request, HttpServletResponse response) {
        String naam = request.getParameter("naam");
        String aantalGasten = request.getParameter("aantalGasten");
        String startdatum = request.getParameter("startdatum");
        String einddatum = request.getParameter("einddatum");
        if (!naam.isEmpty() && !aantalGasten.isEmpty() && !startdatum.isEmpty() && !einddatum.isEmpty()) {
            Reservering reservering = new Reservering(naam, Integer.parseInt(aantalGasten), startdatum, einddatum);
            db.voegToe(reservering);
            return overview(request, response);
        } else {
            return "reserveer.jsp";
        }
    }

    private String delete(HttpServletRequest request, HttpServletResponse response) {
        String naam = request.getParameter("naam");
        db.verwijder(naam);
        return overview(request, response);
    }



}

