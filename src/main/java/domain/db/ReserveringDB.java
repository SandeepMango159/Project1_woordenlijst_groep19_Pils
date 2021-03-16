package domain.db;

import domain.model.Reservering;

import java.util.ArrayList;

public class ReserveringDB {
    private ArrayList<Reservering> reserveringen = new ArrayList<Reservering>();

    public ReserveringDB() {
        this.voegToe(new Reservering("Jarne Schreppers", 4, "14/02/2021", "19/02/2021"));
        this.voegToe(new Reservering("Fien Jansen", 6, "24/02/2021", "27/02/2021"));
        this.voegToe(new Reservering("Albert Franssen", 3, "20/02/2021", "22/02/2021"));
    }

    public void voegToe(Reservering reservering) {
        if (reservering == null) {
            throw new IllegalArgumentException();
        }
        this.reserveringen.add(reservering);
    }

    public Reservering vind(String naam) {
        if (naam == null || naam.trim().isEmpty()) {
            throw new IllegalArgumentException("De naam mag niet leeg zijn.");
        }
        for (Reservering r : reserveringen) {
            if (r.getNaam().equals(naam)) {
                return r;
            }
        }
        return null;
    }

    public void verwijder(String naam) {
        reserveringen.remove(this.vind(naam));
    }

    public ArrayList<Reservering> getAlle() {
        return reserveringen;
    }

    public Reservering getMeesteGasten() {
        if (reserveringen.size() == 0)
            return null;
        Reservering meesteGasten = reserveringen.get(0);
        for (Reservering r : reserveringen) {
            if (r.getAantalGasten() > meesteGasten.getAantalGasten())
                meesteGasten = r;
        }
        return meesteGasten;
    }
}
