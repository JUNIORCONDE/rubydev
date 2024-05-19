=begin
Exemplo de Bubble Sort com Definição de Função:
=end

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] # Troca os elementos
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

# Exemplo de uso
array = [64, 34, 25, 12, 22, 11, 90]
puts "#{array}"
sorted_array = bubble_sort(array)
puts "Array ordenado: #{sorted_array}"
