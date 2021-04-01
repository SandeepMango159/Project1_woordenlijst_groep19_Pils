package domain.db;

import domain.model.DomainException;
import domain.model.Woord;

import java.util.ArrayList;
import java.util.List;

public class Woordenlijst {
    private List<Woord> woorden =  new ArrayList<Woord>();

    public Woordenlijst() {
        this.voegToe(new Woord("hangman"));
        this.voegToe(new Woord("wiel", "beginner"));
        this.voegToe(new Woord("pneumonoultramicroscopicsilicovolcanoconiosis", "expert"));

    }

    public void voegToe(Woord woord) {
        if (woord == null) {
            throw new DomainException("Het woord mag niet leeg zijn.");
        }
        if (this.woorden.contains(woord)) {
            throw new DomainException("Dit woord zit al in de woordenlijst.");
        }
        this.woorden.add(woord);
    }

    public Woord vind(String woord) {
        if (woord == null || woord.trim().isEmpty()) {
            throw new DomainException("De naam mag niet leeg zijn.");
        }
        for (Woord w : this.woorden) {
            if (w.equals(woord)) {
                return w;
            }
        }
        return null;
    }

    public void verwijder(String woord) {
        this.woorden.remove(this.vind(woord));
    }

    public List<Woord> getWoorden() {
        return this.woorden;
    }

    public int getAantalWoorden() {
        return this.woorden.size();
    }

    public String getLangsteWoord() {
        if (this.woorden.size() == 0) {
            return "De woordenlijst is nog leeg.";
        }
        int lengte = 0;
        Woord result = null;
        for (Woord w : woorden) {
            if (w.getLengte() > lengte) {
                lengte = w.getLengte();
                result = w;
            }
        }
        return result.getWoord();
    }

    public String getKortsteWoord() {
        if (this.woorden.size() == 0) {
            return "De woordenlijst is nog leeg.";
        }
        int lengte = this.woorden.get(0).getLengte();
        Woord result = null;
        for (Woord w : woorden) {
            if (w.getLengte() < lengte) {
                lengte = w.getLengte();
                result = w;
            }
        }
        return result.getWoord();
    }

    public float getGemiddeldAantalVerschillendeLetters() {
        int aantalWoorden = this.getAantalWoorden();
        int tekens = 0;
        for (Woord w : this.woorden) {
            tekens += w.getAantalVerschillendeLetters();
        }
        float result = (float) tekens/ (float)aantalWoorden;
        return Math.round(result*100.0F)/100.0F;
    }
}
