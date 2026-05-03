# Estrutura de dados em Ruby

# Array - lista ordenada de elementos
frutas = ["maçã", "banana", "laranja"]

puts frutas[0]       # maçã (índice começa no 0)
puts frutas.length   # 3
puts frutas.first    # maçã
puts frutas.last     # laranja

frutas << "uva"      # adiciona no final
puts frutas.inspect  # ["maçã", "banana", "laranja", "uva"]

frutas.each do |fruta|
  puts fruta
end

# Array com tipos mistos (Ruby permite)
misturado = [1, "texto", true, nil, :simbolo]
puts misturado.inspect

# Hash - coleção de pares chave => valor
pessoa = {
  nome: "Athyrson",
  idade: 25,
  cidade: "Juazeiro do Norte"
}

puts pessoa[:nome]    # Athyrson
puts pessoa[:idade]   # 25
puts pessoa[:cidade]  # Juazeiro do Norte

# Adicionando uma chave nova
pessoa[:linguagem] = "Ruby"
puts pessoa.inspect

# Iterando sobre um hash
pessoa.each do |chave, valor|
  puts "#{chave}: #{valor}"
end