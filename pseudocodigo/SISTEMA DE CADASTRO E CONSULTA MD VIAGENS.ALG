Algoritmo "Sistema de cadastro e consulta MD Viagens"



// Fun��o para cadastro dos clientes

funcao clienteCadastro():caractere
var
   nome, email, cpf, continue: caractere
inicio

   para i de 1 ate 5 faca

      escreva("Digite o nome do cliente: ")
      leia(nome[i])
      escreva("Digite o e-mail: ")
      leia(email[i])
      escreva("Digite o CPF: ")
      leia(cpf[i])

      nome <- nome[i]
      email <- email[i]
      cpf <- cpf[i]

      escreva("Deseja cadastrar outro cliente? (s/n) ")
      leia(continue)

      limpatela

      se (continue <> "s") entao
         interrompa
      fimse


   fimpara
    retorne nome
fimfuncao

// Fun��o para cadastro dos destinos

funcao destinoCadastro():caractere
var
   pais, cidade, estado, continue: caractere
inicio

   para i de 1 ate 5 faca

      escreva("Digite o nome do pa�s de destino: ")
      leia(pais[i])
      escreva("Digite o nome da Cidade: ")
      leia(cidade[i])
      escreva("Digite o nome do Estado: ")
      leia(estado[i])

      pais <-  pais[i]
      cidade <- cidade[i]
      estado <- estado [i]

       escreva("Deseja cadastrar outro destino? (s/n) ")
      leia(continue)

      limpatela

      se (continue <> "s") entao
         interrompa
      fimse


   fimpara
    retorne pais
fimfuncao

// Fun��o para colsulta dos clientes

 procedimento consultaCliente()
var
   cliente: caractere
inicio

   limpatela

   para i de 1 ate 5 faca

      escreval("Nome: ",nome[i])
      escreval("E-mail: ",email[i])
      escreval("CPF: ",cpf[i])
      escreval("______________________")
      fimpara

      escreva("Digite 'n' para encerrar a sess�o!")
      leia(continue)

      escreval("")

fimprocedimento

 // Fun��o para colsultar destinos

procedimento consultadestino()
var

inicio

 limpatela

   para i de 1 ate 5 faca

      escreval("Pa�s: ",pais[i])
      escreval("Cidade: ",cidade[i])
      escreval("Estado: ",estado[i])
      escreval("______________________")
      fimpara

      escreva("Digite 'n' para encerrar a sess�o!")
      leia(continue)

      escreval("")
fimprocedimento

Var
// Se��o de Declara��es das vari�veis
   i:inteiro
   continue: caractere
   menu: caractere
   nome, email, cpf: vetor[1..5] de caractere
   cidade, estado, pais: vetor[1..5] de caractere
   clienteCadastro,destinocadastro:caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
    continue <- "s"

   enquanto (continue = "s") faca

      escreval("                     Menu de op��es:                        ")
      escreval("____________________________________________________________")

      escreval("")

      escreval("                     1 - Cadastrar cliente                  ")
      escreval("                     2 - Cadastrar destino                  ")
      escreval("                     3 - Consultar cliente                  ")
      escreval("                     4 - Consultar destino                  ")
      escreval("                     0 - Sair                               ")

      escreval("")
      escreva("O que deseja fazer?: ")
      leia(menu)
      limpatela

      escolha (menu)

      caso "0"
         interrompa
      caso "1"
         escreval("                      Cadastrar cliente                     ")
         escreval("____________________________________________________________")
         escreval("")
         clienteCadastro <- clienteCadastro()
      caso "2"
         escreval("                      Cadastrar destino                     ")
         escreval("____________________________________________________________")
         escreval("")
         destinoCadastro <- destinoCadastro()
      caso "3"
         escreval("                      Consultar cliente                     ")
         escreval("____________________________________________________________")
         escreval("")
         consultaCliente()
      caso "4"
         escreval("                      Cconsultar destino                    ")
         escreval("____________________________________________________________")
         escreval("")
         consultaDestino()
      fimescolha

      limpatela
   fimenquanto

Fimalgoritmo