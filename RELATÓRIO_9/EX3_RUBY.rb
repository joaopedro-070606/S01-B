class PhoneWave
  def enviar_dmail(mensagem)
    puts "MENSAGEM: '#{mensagem}'"
    puts "AVISO: A mensagem foi enviada para o passado com sucesso!"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
  end

  def admitir(membro)
    @membros << membro
    puts "Lab Mem No. #{membro.numero}: #{membro.nome} foi admitido(a)!"
  end

  def experimento(mensagem)
    puts "\n--- Iniciando Experimento ---"
    @membros.each do |m|
      puts "Presente: Membro #{m.numero} - #{m.nome}"
    end
    
    @phonewave.enviar_dmail(mensagem)
  end
end

okabe = MembroDoLab.new(1, "Okabe Rintarou")
mayuri = MembroDoLab.new(2, "Shiina Mayuri")

lab = LaboratorioDeGadgets.new
lab.admitir(okabe)
lab.admitir(mayuri)

lab.experimento("El Psy Kongroo")

# EXPLICAÇÃO (Passo 6):
# COMPOSIÇÃO: Acontece com o `PhoneWave`. Ele é instanciado (`PhoneWave.new`) diretamente dentro 
# do `initialize` de `LaboratorioDeGadgets`. Ou seja, o PhoneWave nasce e morre com o laboratório, 
# não existindo de forma independente no Main.
# AGREGAÇÃO: Acontece com os objetos `MembroDoLab`. O Okabe e a Mayuri foram instanciados no Main, 
# existindo de forma independente do laboratório. Só depois foram adicionados através do método `admitir`.