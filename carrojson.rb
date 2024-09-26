require 'json'

class Carro
  attr_accessor :modelo, :ano, :cor

  def initialize(modelo, ano, cor)
    @modelo = modelo
    @ano = ano
    @cor = cor
  end

  def info
    "Modelo: #{@modelo}, Ano: #{@ano}, Cor: #{@cor}"
  end

  # Método para transformar o objeto Carro em um hash (necessário para salvar em JSON)
  def to_hash
    { modelo: @modelo, ano: @ano, cor: @cor }
  end

  # Método para criar um objeto Carro a partir de um hash
  def self.from_hash(hash)
    new(hash[:modelo], hash[:ano], hash[:cor])
  end
end

# Função para salvar os carros em um arquivo JSON
def salvar_carros(carros)
  File.open("dados.json", "w") do |file|
    file.write(JSON.pretty_generate(carros.map(&:to_hash)))
  end
end

# Função para carregar os carros de um arquivo JSON
def carregar_carros
  if File.exist?("dados.json")
    carros_json = File.read("dados.json")
    JSON.parse(carros_json, symbolize_names: true).map { |hash| Carro.from_hash(hash) }
  else
    []
  end
end

carros_cadastrados = carregar_carros

# Função para registrar um novo carro
def registrar_carro(carros)
  print "Digite o modelo do carro: "
  modelo = gets.chomp

  print "Digite o ano do carro: "
  ano = gets.chomp.to_i

  print "Digite a cor do carro: "
  cor = gets.chomp

  novo_carro = Carro.new(modelo, ano, cor)
  carros << novo_carro
  puts "Carro cadastrado com sucesso!"
  salvar_carros(carros)  # Salva os carros após registrar um novo
end

# Função para listar os carros cadastrados
def listar_carros(carros)
  if carros.empty?
    puts "Nenhum carro cadastrado."
  else
    puts "#### Carros cadastrados #####:"
    carros.each { |carro| puts carro.info }
  end
end

# Menu de opções com loop para múltiplas funções
loop do
  puts "\nMenu:"
  puts "1. Registrar um carro"
  puts "2. Listar carros cadastrados"
  puts "3. Sair"
  print "Escolha uma opção: "
  opcao = gets.chomp.to_i

  case opcao
  when 1
    registrar_carro(carros_cadastrados)
  when 2
    listar_carros(carros_cadastrados)
  when 3
    puts "Saindo..."
    break
  else
    puts "Opção inválida. Tente novamente."
  end
end
