clientes = {
1 => {nome: 'athyrson', data_de_cadastro: '01/09/2023', cidade: 'Juazeiro do Norte'},
2 => {nome: 'laura', data_de_cadastro: '13/05/2025', cidade: 'Juazeiro do Norte'},
3 => {nome: 'murad', data_de_cadastro: '24/12/2021', cidade: 'crato'}
}

print "Insira o id do cliente: "
id_do_cliente = gets.chomp.to_i

puts "buscando informações do cliente ##{id_do_cliente}..."
sleep 2

cliente = clientes[id_do_cliente]

if cliente != nil
  puts "Nome: #{cliente[:nome]}"
  puts "Data de cadastro: #{cliente[:data_de_cadastro]}"
  puts "Cidade: #{cliente[:cidade]}"
  puts
  puts "Programa finalizado"
else
  puts "Cliente não encontrado"
end