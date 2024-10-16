# Classe Agenda (representa um contato individual)
class Agenda
  attr_accessor :nome, :numero, :cidade

  def initialize(nome, numero, cidade)
    @nome = nome
    @numero = numero
    @cidade = cidade
  end


  def exibir_contato
    puts "Nome: #{@nome}"
    puts "Número: #{@numero}"
    puts "Cidade: #{@cidade}"
  end
end

# Método para exibir o menu
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

=begin
Comandos Nativos Usados:
class

Função: Define uma classe em Ruby. No seu código, define a classe Agenda, que representa um contato individual.
Exemplo: class Agenda
attr_accessor

Função: Cria métodos getter e setter para os atributos especificados (nesse caso, nome, numero e cidade). Permite ler e alterar esses atributos de fora da classe.
Exemplo: attr_accessor :nome, :numero, :cidade
def

Função: Define um método (função) em Ruby.
Exemplo: def initialize(nome, numero, cidade)
initialize

Função: Método especial em Ruby que é chamado quando você cria uma nova instância de uma classe. Aqui, ele inicializa os atributos @nome, @numero e @cidade.
Exemplo: def initialize(nome, numero, cidade)
@ (Variáveis de Instância)

Função: Indica que a variável é uma variável de instância, ou seja, pertence a uma instância específica da classe.
Exemplo: @nome = nome
puts

Função: Comando nativo para imprimir uma string no console, adicionando uma nova linha no final.
Exemplo: puts "Nome: #{@nome}"
print

Função: Similar ao puts, mas não adiciona uma nova linha automaticamente.
Exemplo: print "Escolha uma opção: "
gets

Função: Lê uma entrada do usuário no console como uma string. O input continua até que o usuário pressione Enter.
Exemplo: gets.chomp
chomp

Função: Remove a nova linha (\n) que é adicionada no final de uma string quando o usuário pressiona Enter.
Exemplo: gets.chomp
<<

Função: Operador que adiciona um elemento a um array.
Exemplo: agenda << contato
empty?

Função: Método que verifica se um array (ou string) está vazio. Retorna true se não houver elementos, e false caso contrário.
Exemplo: if agenda.empty?
each_with_index

Função: Itera sobre um array, passando tanto o elemento quanto o índice de cada elemento para o bloco de código.
Exemplo: agenda.each_with_index do |contato, index|
break

Função: Interrompe a execução de um loop.
Exemplo: break (no case when 3)
loop do

Função: Inicia um loop infinito que continua até ser interrompido com break.
Exemplo: loop do
case e when

Função: Estrutura de controle que permite testar uma variável contra diferentes condições (similar ao switch em outras linguagens).
Exemplo: case opcao when 1
Resumo do Código:
Este código é um sistema de agenda de contatos simples. Ele define uma classe Agenda para representar um contato, e a função principal gerencia a exibição de um menu onde o usuário pode:

Adicionar um novo contato.
Exibir todos os contatos.
Sair do programa.
Estruturas e Comandos Nativos Importantes:
Classe e Atributos: A classe Agenda tem três atributos (nome, numero, cidade) que são definidos e acessados com attr_accessor.
Input/Output: O código utiliza puts e print para mostrar mensagens, e gets.chomp para receber dados do usuário.
Array: Os contatos são armazenados em um array (agenda), e o código usa << para adicionar novos contatos e each_with_index para iterar sobre eles.
Loops e Condicionais: O programa principal usa loop do para criar um menu que se repete, com a estrutura case para verificar qual opção o usuário escolheu.
Isso cobre os comandos nativos do código e sua função. Se tiver mais dúvidas ou precisar de mais detalhes sobre algum comando, é só avisar!

=end
