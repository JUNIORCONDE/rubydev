puts "Qual seu Nome?"
nome = gets.chomp
puts "Em qual ano nasceu?"
anonasc = gets.chomp.to_i
puts "Qual ano Atual?"
anoat = gets.chomp.to_i
idade = anonasc - anoat

puts "Sua idade atual é #{idade}"
