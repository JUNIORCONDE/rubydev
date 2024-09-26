# AQUI CRIAMOS UM ESTRUTURA DE CLASSE, MAS SEM metodos para salvar em Json.

class Carro
  attr_accessor :modelo, :ano, :cor  # Permite acesso e modificação dos atributos

  def initialize(modelo, ano, cor)  # Inicializa os atributos com os valores fornecidos
    @modelo = modelo
    @ano = ano
    @cor = cor
  end

  def info  # Método para exibir as informações do carro
    "Modelo: #{@modelo}, Ano: #{@ano}, Cor: #{@cor}"
  end
end

# Array para armazenar os carros cadastrados
carros_cadastrados = []

# Função para registrar um novo carro
def registrar_carro(carros)
  print "Digite o modelo do carro: "
  modelo = gets.chomp  # Entrada do usuário para o modelo

  print "Digite o ano do carro: "
  ano = gets.chomp.to_i  # Entrada do usuário para o ano, convertido para inteiro

  print "Digite a cor do carro: "
  cor = gets.chomp  # Entrada do usuário para a cor

  # Criar uma nova instância de Carro e adicioná-la ao array
  novo_carro = Carro.new(modelo, ano, cor)
  carros << novo_carro
  puts "Carro cadastrado com sucesso!"
end

# Função para listar os carros cadastrados
def listar_carros(carros)
  if carros.empty?
    puts "Nenhum carro cadastrado."
  else
    puts "Carros cadastrados:"
    carros.each { |carro| puts carro.info }
  end
end

# Menu de opções
loop do
  puts "\nMenu:"
  puts "1. Registrar um carro"
  puts "2. Listar carros cadastrados"
  puts "3. Sair"
  print "Escolha uma opção: "
  opcao = gets.chomp.to_i

  case opcao
  when 1
    registrar_carro(carros_cadastrados)  # Chama a função para registrar um carro
  when 2
    listar_carros(carros_cadastrados)  # Chama a função para listar carros
  when 3
    puts "Saindo..."
    break  # Sai do loop
  else
    puts "Opção inválida. Tente novamente."
  end
end
