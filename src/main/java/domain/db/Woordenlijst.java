package domain.db;

import domain.model.DomainException;
import domain.model.Woord;

import java.util.ArrayList;
import java.util.List;

public class Woordenlijst {
    private List<Woord> woorden =  new ArrayList<Woord>();

    public Woordenlijst() {
        this.voegToe(new Woord("pneumonoultramicroscopicsilicovolcanoconiosis", "expert"));
        this.voegToe(new Woord("wiel", "beginner"));
        this.voegToe(new Woord("hangman"));

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
}
