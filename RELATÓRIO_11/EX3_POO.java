import java.util.HashMap;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " está abduzindo vacas e distorcendo a gravidade!");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " está movendo cadeiras e baixando a temperatura!");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>(); 
    }

    public void registrar(String local, Sobrenatural ser) {
        this.avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);
        if (ser == null) {
            System.out.println("O local '" + local + "' está tranquilo.");
        } else {
            ser.manifestar();
        }
    }
}

public class Exercicio3 {
    public static void main(String[] args) {
        Alienigena alien = new Alienigena("Serpo");
        EspiritoYoukai youkai = new EspiritoYoukai("Turbo Granny");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        
        mapa.registrar("Fazenda", alien);
        mapa.registrar("Túnel", youkai);

        mapa.investigar("Fazenda");
        mapa.investigar("Túnel");
        
        mapa.investigar("Escola");
    }
}