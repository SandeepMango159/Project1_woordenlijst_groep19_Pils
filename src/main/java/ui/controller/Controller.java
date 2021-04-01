package ui.controller;


import domain.db.Woordenlijst;
import domain.model.Woord;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

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
            case "download":
                destination = download(request, response);
                break;
            case "reserveer":
                destination = reserveer(request, response);
                break;
                default:
                destination = home(request, response);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String reserveer(HttpServletRequest request, HttpServletResponse response) {
        return "reserveer.jsp";
    }

    private String getDeleteConfirmation() {
        return "verwijderenBevestiging.jsp";
    }

    private String home(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("aantal", db.getAantalWoorden());
        request.setAttribute("langste", db.getLangsteWoord());
        request.setAttribute("kortste", db.getKortsteWoord());
        request.setAttribute("tekens", db.getGemiddeldAantalVerschillendeLetters());
        return "index.jsp";
    }

    private String overview(HttpServletRequest request, HttpServletResponse response) {
        String filter = request.getParameter("filter");
        if (filter == null) {
            request.setAttribute("woorden", db.getWoorden());
            return "overzicht.jsp";
        }
        else if (filter.equals("expert")) {
            request.setAttribute("woorden", db.getExpert());
            return "overzicht.jsp";
        }
        else if (filter.equals("beginner")) {
            request.setAttribute("woorden", db.getBeginner());
            return "overzicht.jsp";
        } else {
            request.setAttribute("woorden", db.getWoorden());
            return "overzicht.jsp";
        }
    }

    private String download(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String filename = "woorden.txt";
        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + filename +
                "\""); PrintWriter out = response.getWriter();
        for (Woord woord : db.getWoorden())
            out.println(woord.getWoord());
        out.close();
        return "overzicht.jsp";
    }

    private String add(HttpServletRequest request, HttpServletResponse response) {
        String woord = request.getParameter("woord");
        String niveau = request.getParameter("niveau");
        if (!woord.isEmpty() && !niveau.isEmpty()) {
            Woord nieuwWoord = new Woord(woord, niveau);
            db.voegToe(nieuwWoord);
            return overview(request, response);
        } else {
            return "reserveer.jsp";
        }
    }

    private String delete(HttpServletRequest request, HttpServletResponse response) {
        String woord = request.getParameter("naam");
        db.verwijder(woord);
        return overview(request, response);
    }



}

