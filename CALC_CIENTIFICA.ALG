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

Inicio //INICIO DO PROGRAM PRINCIPAL





Fimalgoritmo
