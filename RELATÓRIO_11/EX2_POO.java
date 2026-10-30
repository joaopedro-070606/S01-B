import java.util.ArrayList;

class ItemDoCardapio {
    private String nome;
    private double preco;

    public ItemDoCardapio(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() { return nome; }
    public double getPreco() { return preco; }

    public double precoFinal() {
        return preco;
    }
}

class ComboLeblanc extends ItemDoCardapio {
    public ComboLeblanc(String nome, double preco) {
        super(nome, preco);
    }

    @Override
    public double precoFinal() {
        // Retorna o preço com 10% de desconto
        return getPreco() * 0.9;
    }
}

class CafeLeblanc {
    private ArrayList<ItemDoCardapio> cardapio;

    public CafeLeblanc() {
        this.cardapio = new ArrayList<>(); 
    }

    public void adicionar(ItemDoCardapio item) {
        this.cardapio.add(item);
    }

    public void mostrarCardapio() {
        for (ItemDoCardapio item : cardapio) {
            System.out.println(item.getNome() + " - Preço Final: R$ " + item.precoFinal());
        }
    }
}

public class Exercicio2 {
    public static void main(String[] args) {
        ItemDoCardapio cafe = new ItemDoCardapio("Café Coado na Hora", 10.00);
        ItemDoCardapio curry = new ItemDoCardapio("Curry da Casa", 30.00);
        ComboLeblanc combo = new ComboLeblanc("Combo Café + Curry", 40.00);

        CafeLeblanc leblanc = new CafeLeblanc();
        leblanc.adicionar(cafe);
        leblanc.adicionar(curry);
        leblanc.adicionar(combo);

        leblanc.mostrarCardapio();
    }
}