def getNome()
  print "Insira seu nome: "
  nome = gets.chomp
end

def getIdade()
  print "Insira sua idade: "
  idade = gets.chomp
end

def pergunta_sim_nao(texto_pergunta)
  puts texto_pergunta
  puts "Insira o número correspondente a resposta:\n1. Sim;\n2. Não."
  resposta = gets.chomp
  if(resposta == "1")
    return true
  else
    return false
  end
end


def publico()
  puts "Insira quantas viagens comuns de trem, ônibus e metro você faz em média por mês:"
  resp = gets.chomp;
  puts "Dessas %i viagens, quantas são cobradas a tarifa inteira e quantas são cobradas meia, respectivamente?" % resp
  puts "--Insira no formato que segue: <numero de inteiras>, <numero de meias>--"
  resp = gets.chomp.split(", ")
  inteiras = resp[0].to_i
  meias = resp[1].to_i
  puts "%i %i" % [inteiras, meias]
  gasto_total = (inteiras*3.8) + (meias*1.9)
end

def particular()
  puts "Qual a eficiência do seu veículo?\nOu seja, quantos kilometros ele consegue rodar com 1 litro de combustível."
  eficiencia = gets.chomp.to_f
  puts "Em média, quantos kilometros você percorre com ele por dia?"
  media_km = gets.chomp.to_f
  puts "Qual o preço do litro do combustível com que você abastece seu veículo?"
  preco_litro = gets.chomp.to_f
  gasto_total = ((media_km*30) / eficiencia) * preco_litro
end

def gastoTransporte()
  puts "Primeiro, iremos calcular o quanto você gasta com transporte público."
  gastoPublico = publico();
  puts "Seu gasto mensal com transporte público é de R$%s." % gastoPublico
  temCarro = pergunta_sim_nao("Você possui algum veículo particular, como carro ou moto?")
  gastoParticular = 0
  if(temCarro == true)
    puts "Agora iremos calcular o quanto você gasta com seu veículo particular (moto ou carro)"
    gastoParticular = particular();
    puts "Seu gasto mensal com o combustível do seu veículo é de R$%s." % gastoParticular
  else
  puts "Portanto, por mês, seu gasto com transporte é em média de R$%f." % (gastoParticular + gastoPublico)
end

def gastoMoradia()
  puts "Em construção."
end

def exibeMenu()
  puts "1. Gasto com transporte;"
  puts "2. Gasto com moradia."
end

def funcionalidade(opcao)
  if opcao == "1"
    gastoTransporte()
  elsif opcao == "2"
    gastoMoradia()
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
