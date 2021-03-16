package domain.model;

public class Reservering {
    private String naam;
    private int aantalGasten;
    private String startdatum;
    private String einddatum;

    public Reservering(String naam, int aantalGasten, String startdatum, String einddatum) {
        if (naam == null || naam.trim().isEmpty()) {
            throw new IllegalArgumentException("De naam mag niet leeg zijn.");
        }
        if (aantalGasten < 1) {
            throw new IllegalArgumentException("Het aantal gasten moet minstens 1 zijn.");
        }
        if (startdatum == null || naam.trim().isEmpty()) {
            throw new IllegalArgumentException("De startdatum mag niet leeg zijn.");
        }
        if (einddatum == null || naam.trim().isEmpty()) {
            throw new IllegalArgumentException("De einddatum mag niet leeg zijn.");
        }
        this.naam = naam;
        this.aantalGasten = aantalGasten;
        this.startdatum = startdatum;
        this.einddatum = einddatum;
    }

    public Reservering(String naam) {
        this.setNaam(naam);
    }

    public String getNaam() {
        return this.naam;
    }

    public int getAantalGasten() {
        return this.aantalGasten;
    }

    public String getStartdatum() {
        return this.startdatum;
    }

    public String getEinddatum() {
        return this.einddatum;
    }

    public void setNaam(String naam) {
        if (naam == null || naam.trim().isEmpty()) {
            throw new IllegalArgumentException("De naam mag niet leeg zijn.");
        }
        this.naam = naam;
    }

    public void setAantalGasten(int aantalGasten) {
        if (aantalGasten < 1) {
            throw new IllegalArgumentException("Het aantal gasten moet minstens 1 zijn.");
        }
        this.aantalGasten = aantalGasten;
    }

    public void setStartdatum(String startdatum) {
        if (startdatum == null || naam.trim().isEmpty()) {
            throw new IllegalArgumentException("De startdatum mag niet leeg zijn.");
        }
        this.startdatum = startdatum;
    }

    public void setEinddatum(String einddatum) {
        if (einddatum == null || naam.trim().isEmpty()) {
            throw new IllegalArgumentException("De einddatum mag niet leeg zijn.");
        }
        this.einddatum = einddatum;
    }

    public boolean equals (Object o) {
        if (o instanceof Reservering) {
            return this.getNaam().equals(((Reservering)o).getNaam());
        }
        return false;
    }

    @Override
    public String toString() {
        return "Reservatie van " + this.getStartdatum().toString() + " tot " + this.getEinddatum().toString()
                + " voor " + this.getAantalGasten() + " gasten, op naam van " + this.getNaam() + ".";
    }
}




