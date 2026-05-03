# Classes e Parâmetros em Ruby

# Classe básica
class Pessoa
  def initialize(nome, idade)
    @nome  = nome   # variável de instância
    @idade = idade
  end

  def apresentar
    puts "Olá, me chamo #{@nome} e tenho #{@idade} anos."
  end
end

pessoa = Pessoa.new("Athyrson", 25)
pessoa.apresentar  # Olá, me chamo Athyrson e tenho 25 anos.

# -----------------------------------------------

# attr_accessor - cria métodos de leitura e escrita automaticamente
# attr_reader   - só leitura
# attr_writer   - só escrita

class Usuario
  attr_accessor :nome, :email
  attr_reader   :id

  def initialize(id, nome, email)
    @id    = id
    @nome  = nome
    @email = email
  end

  def to_s
    "Usuario ##{@id} - #{@nome} (#{@email})"
  end
end

usuario = Usuario.new(1, "Athyrson", "athy@email.com")
puts usuario.nome      # Athyrson
puts usuario.email     # athy@email.com
puts usuario.id        # 1

usuario.nome  = "Athyrson Lopes"  # funciona, attr_accessor permite escrita
usuario.email = "novo@email.com"
# usuario.id = 99                 # erro! attr_reader não permite escrita

puts usuario  # chama o to_s automaticamente

# -----------------------------------------------

# Herança - uma classe filha herda da classe pai
class Animal
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end

  def falar
    puts "..."
  end
end

class Cachorro < Animal
  def falar
    puts "#{@nome} diz: Au au!"
  end
end

class Gato < Animal
  def falar
    puts "#{@nome} diz: Miau!"
  end
end

cachorro = Cachorro.new("Rex")
gato     = Gato.new("Mimi")

cachorro.falar  # Rex diz: Au au!
gato.falar      # Mimi diz: Miau!

# -----------------------------------------------

# super - chama o método da classe pai
class Produto
  attr_reader :nome, :preco

  def initialize(nome, preco)
    @nome  = nome
    @preco = preco
  end

  def descricao
    "#{@nome} - R$ #{@preco}"
  end
end

class ProdutoComDesconto < Produto
  def initialize(nome, preco, desconto)
    super(nome, preco)  # chama o initialize do pai
    @desconto = desconto
  end

  def preco_final
    @preco - (@preco * @desconto / 100.0)
  end

  def descricao
    super + " (#{@desconto}% de desconto)"  # chama o descricao do pai e adiciona mais
  end
end

produto = ProdutoComDesconto.new("Teclado", 200.0, 10)
puts produto.descricao   # Teclado - R$ 200.0 (10% de desconto)
puts produto.preco_final # 180.0