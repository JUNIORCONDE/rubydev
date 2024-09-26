# Dinossauro representado com ASCII art
dinossauro = [
  "   __",
  "  / _)",
  " .-^^^---.",
  " /       `-.",
  "|  `----.   \\",
  " \\         |\\ ",
  "  \\_______/ |",
  "     ||  ||",
  "     ^^  ^^"
]

# Função para mover o dinossauro para a direita
def andar_dinossauro(dinossauro, passos, delay)
  largura_da_tela = 40 # Limita a largura da tela para o "dinossauro andar"

  passos.times do
    system("clear") || system("cls") # Limpa a tela a cada passo
    dinossauro.each do |linha|
      puts (" " * (rand(largura_da_tela))) + linha # Adiciona espaços em branco para mover o dinossauro
    end
    sleep(delay) # Controla a velocidade dos passos
  end
end

# Mover o dinossauro por 10 passos com 0.3 segundos de intervalo entre os passos
andar_dinossauro(dinossauro, 15, 0.3)
