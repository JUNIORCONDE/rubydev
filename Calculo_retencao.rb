# https://www.gov.br/receitafederal/pt-br/assuntos/meu-imposto-de-renda/tabelas/2024

def calcular_retencao(base_calculo)
  case base_calculo
  when 0..2259.20
    retencao = 0
  when 2259.21..2826.65
    retencao = (base_calculo * 0.075) - 169.44
  when 2826.66..3751.05
    retencao = (base_calculo * 0.15) - 381.44
  when 3751.06..4664.68
    retencao = (base_calculo * 0.225) - 662.77
  else
    retencao = (base_calculo * 0.275) - 896.00
  end


end

puts "Bem-vindo à Calculadora de Imposto de Renda"
puts "Por favor, digite a Base de Cálculo do contribuinte:"
base_calculo = gets.chomp.to_f

retencao = calcular_retencao(base_calculo)
puts "A retenção de imposto de renda a ser paga é: R$ #{retencao}"
