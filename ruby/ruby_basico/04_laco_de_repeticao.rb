# Laços de repetição em Ruby

# each 
frutas = ["maçã", "banana", "laranja"]

frutas.each do |fruta|
  puts fruta
end

# each com índice
frutas.each_with_index do |fruta, index|
  puts "#{index}: #{fruta}"
end

# times - repete N vezes
3.times do |i|
  puts "repetição #{i}"
end

# while - repete enquanto condição for verdadeira
contador = 0
while contador < 3
  puts "contador: #{contador}"
  contador += 1
end

# until - repete enquanto condição for FALSA (contrário do while)
contador = 0
until contador == 3
  puts "until: #{contador}"
  contador += 1
end

# map - itera e retorna um novo array transformado
numeros = [1, 2, 3, 4, 5]
dobrados = numeros.map { |n| n * 2 }
puts dobrados.inspect  # [2, 4, 6, 8, 10]

# select - filtra elementos que satisfazem a condição
pares = numeros.select { |n| n.even? }
puts pares.inspect  # [2, 4]

# each com hash
pessoa = { nome: "Athyrson", idade: 25 }
pessoa.each do |chave, valor|
  puts "#{chave}: #{valor}"
end