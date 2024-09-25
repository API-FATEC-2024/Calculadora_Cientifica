Algoritmo "Calc_cientifica"
// 
//  
// Descrição   : Calculadora cientifica  - BancodeBravos
// Autor(a)    : Matheus Volotao, Matheus Souza, Bruna Camille, Guilherme C.
// Abimael S., Eduardo D., Joao,Caue,Raissa J.,
// Data atual  : 9/14/2024

Var // DECLARACAO DAS FUNCOES/PROCEDIMENTOS AQUI
gv_retBaseDez:inteiro

 função f_calculoSoma() : real
 var
 lv_N1,lv_N2: real
 lv_resultado : real
 inicio
 escreva ("Escreva o primeiro número: ")
   leia (lv_N1)
   escreva ("Escreva o segundo número: ")
   leia (lv_N2)
   lv_resultado <- lv_N1+lv_N2
   escreva ("O resultado é: ")
   escreva (lv_resultado)
   retorne 0
 fimfunção

 função f_calculoSubtracao() : real
 var
 lv_M1,lv_M2: real
 lv_resultado : real
 inicio
 escreva ("Escreva o primeiro número: ")
   leia (lv_M1)
   escreva ("Escreva o segundo número: ")
   leia (lv_M2)
   lv_resultado <- lv_M1-lv_M2
   escreva ("O resultado é: ")
   escreva (lv_resultado)
   retorne 0
  fimfunção

funcao fatorial(y:inteiro) : inteiro // Declaracao funcao fatorial
inicio
   se y = 1 entao
      retorne 1
   senao
      retorne y * fatorial(y - 1)
   fimse
fimfuncao

funcao f_calculoJuros (): real
var
   lv_juros: real
   lv_capital, lv_taxa, lv_tempo: real
   lv_montante: real
   lv_resultado: real

inicio
   //calculo juros simples
   Escreva ("digite o valor do capital:")
   leia(lv_capital)
   Escreva ("digite o valor do tempo:")
   leia(lv_tempo)
   Escreva ("digite o valor da taxa:")
   leia(lv_taxa)

   lv_juros <- (lv_capital*lv_taxa*lv_tempo)/100

   Escreval ("O valor do juros é:" ,lv_juros)

   //calculo do lv_montante
   lv_montante <- lv_juros + lv_capital

   Escreval ("o valor do montante é:", lv_montante)
   //calculo juros composto
   Escreva ("digite o valor do capital:")
   leia(lv_capital)
   Escreva ("digite o valor do tempo:")
   leia(lv_tempo)
   Escreva ("digite o valor da taxa:")
   leia(lv_taxa)

   lv_resultado <- lv_capital *(1+lv_taxa)^lv_tempo

   Escreval ("o valor do juros composto é: ", lv_resultado)

   retorne 0
   
fimfuncao // f_calculoJuros ()

funcao ConcatenarString() : caracter
var
lv_res: caracter
lv_string1,lv_string2: caracter
Inicio
   escreva("Digite a primeira string: ")
   leia(lv_string1)
   escreva("Digite a segunda string: ")
   leia(lv_string2)
   lv_res <- lv_string1 + lv_string2
   escreva(lv_res)
   retorne(0)
   
fimfuncao // ConcatenarString()

funcao f_navegacao():inteiro

var
   lv_item:inteiro
   lv_retorno:real

inicio
   lv_item <--1

   enquanto lv_item <> 0 faca
      escreval("Menu Calculadora")

      escreval("Selecione uma operacao,digite sua escolha")


      escreval("1-Soma")
      escreval("2-Subtracao")
      escreval("3-Multiplicacao")
      escreval("4-Divisao")
      escreval("5-Fatorial")
      escreval("6-Juros Simples")
      escreval("7-Juros Compostos")
      escreval("8-Conversao B2 para B10")
      escreval("9-Conversao B10 para B2")
      escreval("10-Concatenacao de strings")
      escreval("0-Encerrar calculadora")

      leia(lv_item)

      escolha lv_item
      caso 1
         escreval("1 foi escolhido")
      caso 2
         escreval("2 foi escolhido")
      caso 3
         escreval("3 foi escolhido")
      caso 4
         escreval("4 foi escolhido")
      caso 5
         escreval("5 foi escolhido")
      caso 6
         escreval("6 foi escolhido")
      caso 7
         escreval("7 foi escolhido")
      caso 8
         escreval("8 foi escolhido")
      caso 9
         escreval("9 foi escolhido")
      caso 10
         escreval("10 foi escolhido")
      caso 11
         escreval("11 foi escolhido")
      fimescolha

   fimenquanto


fimfuncao //navegacao()

Inicio //INICIO DO PROGRAM PRINCIPAL





Fimalgoritmo
