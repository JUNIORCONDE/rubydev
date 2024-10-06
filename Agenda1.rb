# Classe Agenda (representa um contato individual)
class Agenda
  attr_accessor :nome, :numero, :cidade

  def initialize(nome, numero, cidade)
    @nome = nome
    @numero = numero
    @cidade = cidade
  end

# Método para exibir o menu
  def exibir_contato
    puts "Nome: #{@nome}"
    puts "Número: #{@numero}"
    puts "Cidade: #{@cidade}"
  end
end

def exibir_menu
  puts "\n----- MENU -----"
  puts "1. Adicionar Contato"
  puts "2. Exibir Contatos"
  puts "3. Sair"
  print "Escolha uma opção: "
end

# Método para adicionar um novo contato
def adicionar_contato(agenda)
  puts "\nAdicionar Novo Contato"
  print "Nome: "
  nome = gets.chomp
  print "Número: "
  numero = gets.chomp
  print "Cidade: "
  cidade = gets.chomp

  # Cria uma nova instância da classe Agenda (agora representando o contato)
  contato = Agenda.new(nome, numero, cidade)
  agenda << contato
  puts "\nContato adicionado com sucesso!"
end

# Método para exibir todos os contatos
def exibir_contato(agenda)
  if agenda.empty?
    puts "\nNenhum contato registrado ainda."
  else
    puts "\nTodos os Contatos Registrados:"
    agenda.each_with_index do |contato, index|
      puts "\n---- Contato ##{index + 1} ----"
      contato.exibir_contato
    end
  end
end


# Programa Principal
agenda = []  # Array que armazena os contatos (Agenda agora representa o contato)

loop do
  exibir_menu
  opcao = gets.chomp.to_i

  case opcao
  when 1
    adicionar_contato(agenda)  # Adiciona contato ao array de agenda
  when 2
    exibir_contato(agenda)  # Exibe todos os contatos armazenados
  when 3
    puts "Saindo do programa..."
    break
  else
    puts "Opção inválida. Por favor, escolha novamente."
  end
end
