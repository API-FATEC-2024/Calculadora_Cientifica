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

funcao f_fatorial(): real
var
    lv_resultado: real
    lv_NumFat: real
    lv_contador: real

inicio
    Escreval("Digite um número")
    leia(lv_NumFat)

    enquanto lv_NumFat <= 0 faca
        Escreval("Digite um numero maior que zero")
        leia(lv_NumFat)
    fimenquanto

    lv_resultado <- 1
    lv_contador <- 1

    enquanto lv_NumFat > lv_contador faca
        lv_resultado <- lv_resultado * lv_NumFat
        lv_NumFat <- lv_NumFat - 1
    fimenquanto

    Escreval("O fatorial é: ", lv_resultado)
    
    retorne 0
    
    fimfuncao

funcao f_segundoGrau():real
 var
  a,b,c,delta,x1,x2:real
 inicio
  leia(a)
  leia(b)
  leia(c)
  delta <-0
  x1<-0
  x2<-0
  delta <- b*b-4*(a)*(c)
  escreval ("O delta é:  ", delta)
  se delta >=0 então
    x1<-(-b+(delta)^(1/2))/(2*a)
    x2<-(-b-(delta)^(1/2))/(2*a)
    escreval ("A raiz de x1 é:  ", x1)
    escreval ("A raiz de x2 é:  ", x2)
  senão
    escreva ("Não possui raiz real")
  Fimse
  retorne 0
Fimfuncao

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

   retorne 0
   
fimfuncao // f_calculoJuros ()

funcao f_jurosComposto (): real

var
   lv_juros: real
   lv_capital, lv_taxa, lv_tempo: real
   lv_montante: real
   lv_resultado: real

inicio
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

fimfuncao // f_jurosComposto

//Função B2 -> B16
procedimento f_calculoBinarioToHexacimal()
  var
    resto, digitoE, numBin, Hexa: caracter
    tam,posi: inteiro
  inicio
    Hexa <- ""
    Escreval("Digite o número Binario: ")
    leia(numBin)
    posi<-1
    tam <- compr(numBin)
    enquanto tam % 4 <> 0 faca
      numBin <- "0" + numBin
      tam <- tam + 1
    fimenquanto
    enquanto posi <= tam faca
      resto <- copia(numBin, posi, 4)
      escolha resto
        caso "0000"
          digitoE <- "0"
        caso "0001"
          digitoE <- "1"
        caso "0010"
          digitoE <- "2"
        caso "0011"
          digitoE <- "3"
        caso "0100"
          digitoE <- "4"
        caso "0101"
          digitoE <- "5"
        caso "0110"
          digitoE <- "6"
        caso "0111"
          digitoE <- "7"
        caso "1000"
          digitoE <- "8"
        caso "1001"
          digitoE <- "9"
        caso "1010"
          digitoE <- "A"
        caso "1011"
          digitoE <- "B"
        caso "1100"
          digitoE <- "C"
        caso "1101"
          digitoE <- "D"
        caso "1110"
          digitoE <- "E"
        caso "1111"
          digitoE <- "F"
      fimescolha
      Hexa <-  Hexa + digitoE
      posi <- posi + 4
    fimenquanto
    escreval("Resultado da conversão para Hexadecimal : ")
    escreva(Hexa)
fimprocedimento


//Função B16 -> B2
procedimento f_calculoHexadecimalToBinario()
  var
    auxdigitoE,numHex,hex, digitoE: caracter
    i,j, potencia,tam: inteiro
  inicio
    Escreval("Digite o número Hexadecimal: ")
    leia(numHex)
    tam<- compr(numHex)
    hex <- ""
    j<-1
    enquanto tam > 0 faca
      auxdigitoE <- copia(numHex:j:1)
      escolha auxdigitoE
         caso "0"
           //resto<- "0"
           digitoE <- "0000"
         caso "1"
           //resto<- "1"
           digitoE <- "0001"
         caso "2"
           //resto<- "2"
           digitoE <- "0010"
         caso "3"
           //resto<- "3"
           digitoE <- "0011"
         caso "4"
           //resto<- "4"
           digitoE <- "0100"
         caso "5"
           //resto<- "5"
           digitoE <- "0101"
         caso "6"
           //resto<- "6"
           digitoE <- "0110"
         caso "7"
           //resto<- "7"
           digitoE <- "0111"
         caso "8"
           //resto<- "8"
           digitoE <- "1000"
         caso "9"
           //resto<- "9"
           digitoE <- "1001"
         caso  "A"
           //resto<- "A"
           digitoE <- "1010"
         caso "B"
           //resto<- "B"
           digitoE <- "1011"
         caso "C"
           //resto<- "C"
           digitoE <- "1100"
         caso "D"
           //resto<- "D"
           digitoE <- "1101"
         caso "E"
           //resto<- "E"
           digitoE <- "1110"
         caso "F"
           //resto<- "F"
           digitoE <- "1111"
      fimescolha
      hex <-  hex + digitoE
      tam <- tam -1
      j<- j + 1
    fimenquanto
    escreval("Resultado da conversão para Binário : ")
    escreval(hex)
fimprocedimento

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
