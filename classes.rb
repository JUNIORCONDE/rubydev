## Curso Bśon Treinamentos 
## ORIENTAÇÃO OBJETOS.
## https://www.youtube.com/watch?v=7GJb31MjDIw&t=4s&ab_channel=B%C3%B3sonTreinamentos

class Animal
# para fornecer valores nos atributos de fora da classe, poder modificar o metodo dentro de
# de uma classe, precisamos programar a classe para que deixa fornecer esses valores.
# usamos metodos de acesso getters setters

#attr_reader :nome
#attr_writer :nome
attr_accessor :nome 
attr_accessor :especie


# precisamos criar um metodo de construção, toda vez que criamos um objeto dentro de uma classe
# para criar esse metodo construtor usamos def.

    def initialize (n, e)


# tudo que tiver @ é um atributo de instância (atributo dentro da classe), variavel de instância.
# atributo de objeto que criamos @nome, @especie
    @nome = n       # posso também colocar valores fixos dentro do objeto, sem precisar chamar ele pelo metodo @nome = JUNIOR
    @especie = e

    end

end
# dessa forma estamos colocando os nomes, dados, informação de forma automática, sem inserção do usuário
#pet = Animal.new("Totó", "Cachorro")
#puts pet.nome
#puts pet.especie

# dessa forma o usuário precisa fornecer informção, entrada do teclado.
pet = Animal.new("...", "...") # aqui precisamos deixar qual valor, pois ele vai sofrer alteração, e não deixa vai da erro.
puts "Qual nome do seu Animal de estimação?"
    pet.nome = gets.chomp()
puts "Qual a raça do seu bichinho?"
    pet.especie = gets.chomp()

puts pet.nome
puts pet.especie