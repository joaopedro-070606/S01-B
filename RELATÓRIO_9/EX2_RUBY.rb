class Instrumentista
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "#{self.class} deve implementar interpretar"
  end
end

class Solista < Instrumentista
  def interpretar(peca)
    puts "#{@nome} no #{@instrumento} toca '#{peca}', conduzindo a melodia principal."
  end
end

class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "#{@nome} no #{@instrumento} toca '#{peca}', acompanhando o ritmo do solista."
  end
end

class Regente
  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  def reger(peca)
    puts "\nO regente #{@nome} está a reger a peça '#{peca}'!"
    @orquestra.each do |i|
      i.interpretar(peca)
    end
  end

  def escalacao
    @orquestra.map { |i| "[#{i.class}] Nome: #{i.nome}" }
  end
end

solista = Solista.new("Kousei Arima", "Piano")
acompanhador = Acompanhador.new("Kaori Miyazono", "Violino")
regente = Regente.new("Hiroshi")

regente.convocar(solista)
regente.convocar(acompanhador)

regente.reger("Twinkle Twinkle Little Star")

puts "\n--- Escalação ---"
textos_escalacao = regente.escalacao
textos_escalacao.each do |texto|
  puts texto
end

instrumentista_base = Instrumentista.new("Tsubaki", "Flauta")
# instrumentista_base.interpretar("Clair de Lune")