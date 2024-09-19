puts "Digite seu Nome"
nome = gets.chomp

puts "Informe um Numero"
numero = gets.to_i

puts "Seu Nome é, #{nome}"
puts " Numero escolhido foi #{numero}"

if numero.even?
  puts "O Numero #{numero} é par"

else
  puts "O Numero #{numero} é impar"

end
