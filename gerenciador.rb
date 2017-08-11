def getNome()
  print "Insira seu nome: "
  nome = gets.chomp
end

def getIdade()
  print "Insira sua idade: "
  idade = gets.chomp
end

def valorTransporte()
  puts "Insira quantas viagens comuns de trem, ônibus e metro você faz em média por mês:"
  resp = gets.chomp;
  puts "Dessas %i viagens, quantas são cobradas a tarifa inteira e quantas são cobradas meia, respectivamente?" % resp
  puts "--Insira no formato que segue: <numero de inteiras>, <numero de meias>--"
  resp = gets.chomp.split(", ")
  inteiras = resp[0].to_i
  meias = resp[1].to_i
  puts "%i %i" % [inteiras, meias]
  gasto_total = (inteiras*3.8) + (meias*1.9)
  puts "Seu gasto mensal com transporte público é de R$%s." % gasto_total
end

def gastos()
  puts "Em construção."
end

def exibeMenu()
  puts "Em construção."
end

def funcionalidade(opcao)
  if opcao == "1"
    valorTransporte()
  elsif opcao == "2"
    gastos()
  else
    puts "Opção inexistente. Tente novamente com um número válido."
  end
end

#nome = getNome
#puts "Seu nome é %s." % [nome]
puts "Bem vindo!\nAntes de iniciarmos precisamos de algumas informações."
nome = getNome
idade = getIdade

puts "Olá, %s! Para selecionar uma ação, insira seu número correspondente:" % nome
exibeMenu()
funcionalidade(gets.chomp) while true
