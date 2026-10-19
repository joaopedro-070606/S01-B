class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor)
    if valor.is_a?(Numeric) && valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "Drink: #{@nome} | Preço: €#{preco}"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super} | Lenda Homenageada: #{@lenda}"
  end
end

drink_comum = CoquetelAfterlife.new("Cerveja Cerveza", 15)
drink_lenda1 = DrinkDeLenda.new("Johnny Silverhand", 150, "Rockerboy Johnny")
drink_lenda2 = DrinkDeLenda.new("David Martinez", 100, "David de Santo Domingo")

cardapio = [drink_comum, drink_lenda1, drink_lenda2]

puts "--- Fichas Iniciais ---"
cardapio.each do |drink|
  puts drink.ficha
end

puts "\n--- Teste de Setter ---"
drink_lenda1.preco = 500
drink_lenda1.preco = 80

puts drink_lenda1.ficha

# drink_comum.nome = "Vodka"