package domain.model;

public class Woord {
    private String woord;
    private String niveau = "";

    public Woord(String woord) {
        this.setWoord(woord);
    }

    public Woord(String woord, String niveau) {
        this.setWoord(woord);
        this.setNiveau(niveau);
    }

    public String getWoord() {
        return this.woord;
    }

    public String getNiveau() {
        return this.niveau;
    }

    public void setWoord(String woord) {
        if (woord == null || woord.trim().isEmpty()) {
            throw new DomainException("Het woord mag niet leeg zijn.");
        }
        this.woord = woord;
    }

    public void setNiveau(String niveau) {
        if (niveau.equals("beginner")  || niveau.equals("expert")) {
            this.niveau = niveau;
        }
        else {
            throw new DomainException("Het niveau mag enkel 'beginner' of 'expert' zijn.");
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Woord) {
            Woord woord = (Woord) obj;
            // Een woord mag niet 2 keer in de lijst voorkomen want dan kan je
            // "hangman expert" en "hangman beginner" hebben, dus enkel op woord checken niet op woord en niveau
            if (this.getWoord().equals(woord.getWoord())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String toString() {
        return "Woord: " + this.getWoord() + (this.niveau == null ? ", geen niveau." : ", niveau: " + this.getNiveau() + ".");
    }
}
