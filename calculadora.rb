#Atividdades Intermediarias - criando uma calculadora
def calculadora (a, b, operacao)
  case operacao
  when "+" #quando
    a + b
  when "-"
    a - b
  when "*"
    a * b
  when "/"
    a / b
  end
end

puts "Digite o Primeiro Numero"
a = gets.chomp.to_f
puts "Digite o Segundo Numero"
b = gets.chomp.to_f
puts "Escolha a Operação (+, -, *, /,)"
operacao = gets.chomp

resultado = calculadora(a, b, operacao)
puts "Resultado.: #{resultado}"
