## Estudo, fazendo exercicios de variáveis, metodo e classes

class Carro
  attr_accessor :modelo, :ano, :cor

  def initialize(modelo, ano, cor)
    @modelo = modelo
    @ano = ano
    @cor = cor
  end

  def info
    puts "Modelo: #{@modelo}, Ano: #{@ano}, Cor: #{@cor}"
  end
end

# Coletar dados de um único carro
print "Digite o modelo do carro: "
modelo = gets.chomp
print "Digite o ano do carro: "
ano = gets.chomp.to_i
print "Digite a cor do carro: "
cor = gets.chomp

# primeira forma de escrever, informações obtidas
#puts "Modelo.: Modelo; #{modelo}, Ano; #{ano}, Cor; #{cor}"

# segunda forma
meu_carro = Carro.new(modelo, ano, cor)
meu_carro.info
