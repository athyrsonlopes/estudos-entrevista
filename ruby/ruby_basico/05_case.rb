# Case em Ruby

# case é como um switch em outras linguagens

# Exemplo básico com string
dia = "segunda"

case dia
when "segunda", "terça", "quarta", "quinta", "sexta"
  puts "dia útil"
when "sábado", "domingo"
  puts "fim de semana"
else
  puts "dia inválido"
end

# Exemplo com integer
nota = 8

case nota
when 9..10
  puts "A - Excelente"
when 7..8
  puts "B - Bom"
when 5..6
  puts "C - Regular"
else
  puts "D - Insuficiente"
end

# Case com símbolo (muito comum em Rails)
status = :ativo

case status
when :ativo
  puts "usuário ativo"
when :inativo
  puts "usuário inativo"
when :banido
  puts "usuário banido"
else
  puts "status desconhecido"
end

# Case retornando valor (pode atribuir a uma variável)
linguagem = "ruby"

descricao = case linguagem
when "ruby"   then "elegante e produtiva"
when "python" then "simples e versátil"
when "java"   then "robusta e verbosa"
else               "linguagem desconhecida"
end

puts descricao