import java.util.ArrayList;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}

class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Desidratar ao sol e usar como gelatina para sobremesa.";
    }
}

class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Cortar finamente, ferver a raiz e fazer um caldo nutritivo.";
    }
}

class Panela {
    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}

class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela); 
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        this.ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Cozinheiro: " + nome + " | Panela de: " + panela.getMaterial());
        for (Monstro m : ingredientes) {
            System.out.println("- " + m.getNome() + " -> Receita: " + m.receita());
        }
    }
}

public class Exercicio4 {
    public static void main(String[] args) {
        Slime slime = new Slime("Slime Verde");
        Mandragora mandragora = new Mandragora("Mandrágora Gritante");

        Cozinheiro senshi = new Cozinheiro("Senshi", "Adamantium");
        
        senshi.adicionarIngrediente(slime);
        senshi.adicionarIngrediente(mandragora);

        senshi.servirBanquete();

        /*
         * 6 ->
         * - COMPOSIÇÃO: Ocorre entre 'Cozinheiro' e 'Panela'. A Panela é instanciada 
         *   DENTRO do construtor de Cozinheiro. Ou seja, ela "nasce" e "morre" junto com ele. 
         *   Se o objeto Cozinheiro for destruído, a Panela também será. É uma relação de dependência forte.
         * 
         * - AGREGAÇÃO: Ocorre entre 'Cozinheiro' e 'Monstro'. Os monstros foram instanciados 
         *   FORA do Cozinheiro (aqui na main) e apenas passados/adicionados à lista dele. 
         *   Eles existem de forma independente. Se o Cozinheiro for destruído, os objetos Monstro 
         *   continuarão existindo na memória. É uma relação de dependência fraca.
         */
    }
}