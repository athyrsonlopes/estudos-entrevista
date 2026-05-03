# Expressões condicionais em Ruby

idade = 20

# if / elsif / else
if idade >= 18
  puts "maior de idade"
elsif idade >= 13
  puts "adolescente"
else
  puts "criança"
end

# unless - contrário do if (executa quando condição é FALSA)
unless idade < 18
  puts "pode entrar na festa"
end

# if em linha 
puts "maior de idade" if idade >= 18
puts "menor de idade" unless idade >= 18

# Operadores de comparação
puts 10 > 5   # true
puts 10 < 5   # false
puts 10 == 10 # true (igualdade)
puts 10 != 5  # true (diferente)
puts 10 >= 10 # true
puts 10 <= 9  # false

# Operadores lógicos
puts true && false  # false (E)
puts true || false  # true  (OU)
puts !true          # false (NÃO)

# Operador ternário
resultado = idade >= 18 ? "maior" : "menor"
puts resultado