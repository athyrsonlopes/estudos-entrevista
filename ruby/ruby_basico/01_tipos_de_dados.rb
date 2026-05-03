
# Tipos de dados em Ruby

# Integer - números inteiros
idade = 25
puts idade        # 25
puts idade.class  # Integer

# Float - números decimais
altura = 1.75
puts altura        # 1.75
puts altura.class  # Float

# Boolean - verdadeiro ou falso
ativo   = true
inativo = false
puts ativo    # true
puts inativo  # false

# Nil - ausência de valor
sem_valor = nil
puts sem_valor.nil?  # true
puts sem_valor.class # NilClass

# String - texto
nome = "Athyrson"
puts nome                  # Athyrson
puts "Olá, #{nome}!"      # interpolação: Olá, Athyrson!
puts nome.upcase           # ATHYRSON
puts nome.length           # 8

# Symbol - como uma string imutável, muito usado em hashes e chaves
status = :ativo
puts status        # ativo
puts status.class  # Symbol