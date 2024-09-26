=begin
Varíaveis e Constantes em Ruby

Tipos de Variáveis em RUBY
 - Variáveis Locais 
 - Variáveis Global
 - Variáveis de Instância
 - Variáveis de Clasee
 
 --CONSTANTES
 
 - VARIALVEL GLOBAL
Inician com um $, normalmente escritas com letras minúsculas.
Não são muito recomendadas em Ruby (devido vulnerabilidade)
Ex.: 
$taxa = 0.15
 
 - VARIAVEL LOCAL
Especificas no contexto  onde são criadas, no local de criação.
Caracteres minúsculos.
Ex.:
nome = "Junior"
nome = gets.chomp
puts nome

 - VARIAVEL DE INSTÂNCIA
Válidas dentro de um Objeto.
Inciam com um @
Ex.:
@preco = 0 

- VARIAVEL DE CLASSE
Válidas dentro de uma classe, ou seja, para todas as instâncias da Classe.
Inciam com @@
Ex.:
@@imposto = 0.25

- CONSTANTES
Escritas com letras maiúsculas.
Ex.:
VALOR_DESCONTO = 10

=end


puts "DIGITE SEU NOME"
nome = gets.chomp

salario =2500.00
# aqui estou escrevendo de forma concatenar.
# lembrado que na concatenação não ha conversão de float para String, nesse casso precisamos usar to_s em numeros.

## puts nome + " ganha " + salario.to_s + " reais"


# aqui estou escrevendo de forma, tratando tudo como string.
#puts "#{nome} ganha #{salario}, reais."





