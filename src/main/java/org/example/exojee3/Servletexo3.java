package org.example.exojee3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;



@WebServlet(name = "servletexo3", value = "/exo3")
public class Servletexo3 extends HttpServlet {
    private List<Personne> personnes;

    @Override
    public void init() throws ServletException {
        personnes = new ArrayList<>();
        personnes.add(new Personne("prenom1", "nom1", 20));
        personnes.add(new Personne("prenom2", "nom2", 22));
        personnes.add(new Personne("prenom3", "nom3", 23));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("personnes", personnes);
        req.getRequestDispatcher("/pages/exo3.jsp").forward(req, resp);
    }
}

