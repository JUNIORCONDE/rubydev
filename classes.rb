## Curso Bśon Treinamentos 
## ORIENTAÇÃO OBJETOS.
## https://www.youtube.com/watch?v=7GJb31MjDIw&t=4s&ab_channel=B%C3%B3sonTreinamentos

class Animal
# para fornecer valores nos atributos de fora da classe, poder modificar o metodo dentro de
# de uma classe, precisamos programar a classe para que deixa fornecer esses valores.
# usamos metodos de acesso getters setters

attr_reader :nome
attr_writer :nome


# precisamos criar um metodo de construção, toda vez que criamos um objeto dentro de uma classe
# para criar esse metodo construtor usamos def.

    def initialize (n, e)


# tudo que tiver @ é um atributo de instância (atributo dentro da classe), variavel de instância.
# atributo de objeto que criamos @nome, @especie
    @nome = n       # posso também colocar valores fixos dentro do objeto, sem precisar chamar ele pelo metodo @nome = JUNIOR
    @especie = e

    end

end

pet = Animal.new()




