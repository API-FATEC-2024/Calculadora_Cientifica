Algoritmo "Calc_cientifica"
// 
//  
// Descrição   : Calculadora cientifica  - BancodeBravos
// Autor(a)    : Matheus Volotao, Matheus Souza, Bruna Camille, Guilherme C.
// Abimael S., Eduardo D., Joao,Caue,Raissa J.,
// Data atual  : 9/14/2024

Var // DECLARACAO DAS FUNCOES/PROCEDIMENTOS AQUI
gv_retBaseDez:inteiro

função soma(N1,N2: real) : real
 var
 resultado : real
 inicio
   leia (N1)
   leia (N2)
   resultado <- N1+N2
   retorne resultado
fimfunção

função subtracao(M1,M2: real) : real
 var
 resultado : real
 inicio
   leia (M1)
   leia (M2)
   resultado <- M1-M2
   retorne resultado
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

Inicio //INICIO DO PROGRAM PRINCIPAL





Fimalgoritmo
