# Métodos em Ruby


# Método básico
def saudacao
  puts "Olá, mundo!"
end

saudacao  # chamando o método

# Método com parâmetro
def saudar(nome)
  puts "Olá, #{nome}!"
end

saudar("Athyrson")  # Olá, Athyrson!

# Método com parâmetro padrão 
def saudar_com_padrao(nome = "visitante")
  puts "Olá, #{nome}!"
end

saudar_com_padrao             # Olá, visitante!
saudar_com_padrao("Athyrson") # Olá, Athyrson!

# Método com retorno explícito
def somar(a, b)
  return a + b
end

resultado = somar(3, 5)
puts resultado  # 8

# Em Ruby, o return é opcional - o último valor é retornado automaticamente
def multiplicar(a, b)
  a * b
end

puts multiplicar(4, 5)  # 20

# Método com múltiplos parâmetros
def apresentar(nome, idade, cidade)
  puts "Me chamo #{nome}, tenho #{idade} anos e moro em #{cidade}."
end

apresentar("Athyrson", 25, "Juazeiro do Norte")

# Método com keyword arguments 
def criar_usuario(nome:, email:, admin: false)
  puts "Nome: #{nome}"
  puts "Email: #{email}"
  puts "Admin: #{admin}"
end

criar_usuario(nome: "Athyrson", email: "athy@email.com")
criar_usuario(nome: "Jess", email: "jess@email.com", admin: true)

# Método que retorna múltiplos valores
def min_max(numeros)
  [numeros.min, numeros.max]
end

minimo, maximo = min_max([3, 1, 8, 2, 5])
puts "Mínimo: #{minimo}, Máximo: #{maximo}"

# Método privado - só pode ser chamado dentro da classe
class Conta
  def saldo_formatado
    "R$ #{formatar(1500.0)}"  # chama o método privado internamente
  end

  private

  def formatar(valor)
    format("%.2f", valor)
  end
end

conta = Conta.new
puts conta.saldo_formatado  # R$ 1500.00
# conta.formatar(100)       # erro! método privado não pode ser chamado de fora