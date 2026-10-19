module Depoente
  def depor
    raise NotImplementedError, "#{self.class} deve implementar depor"
  end
end

module Detivel
  def ser_detido
    puts "#{@nome} foi levado(a) pela Scotland Yard!"
  end
end

class Envolvido
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class TestemunhaOcular < Envolvido
  include Depoente

  def depor
    puts "#{@nome} relata: 'Eu vi uma pessoa muito suspeita a correr!'"
  end
end

class SuspeitoDoCrime < Envolvido
  include Depoente
  include Detivel

  def depor
    puts "#{@nome} argumenta: 'Eu estava num pub muito longe da Baker Street!'"
  end
end

class Investigacao
  def initialize(caso)
    @caso = caso
    @envolvidos = []
  end

  def registrar(envolvido)
    @envolvidos << envolvido
  end

  def ouvir_todos
    puts "\n--- Ouvindo envolvidos no caso: #{@caso} ---"
    @envolvidos.each do |e|
      e.depor
    end
  end

  def acionar_scotland_yard
    puts "\n--- Acionando a Polícia ---"
    detidos = @envolvidos.select { |e| e.respond_to?(:ser_detido) }
    
    detidos.each do |d|
      d.ser_detido
    end
  end
end

testemunha = TestemunhaOcular.new("Senhora Hudson")
suspeito1 = SuspeitoDoCrime.new("Irene Adler")
suspeito2 = SuspeitoDoCrime.new("Professor Moriarty")

investigacao = Investigacao.new("Um Estudo em Vermelho")

investigacao.registrar(testemunha)
investigacao.registrar(suspeito1)
investigacao.registrar(suspeito2)

investigacao.ouvir_todos
investigacao.acionar_scotland_yard