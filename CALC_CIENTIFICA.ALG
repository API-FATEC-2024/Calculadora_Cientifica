Algoritmo "Calc_cientifica"
// 
//  
// Descrição   : Calculadora cientifica  - BancodeBravos
// Autor(a)    : Matheus Volotao, Matheus Souza, Bruna Camille, Guilherme C.
// Abimael S., Eduardo D., Joao,Caue,Raissa J.,
// Data atual  : 9/14/2024

Var // DECLARACAO DAS FUNCOES/PROCEDIMENTOS AQUI
gv_retorno:inteiro

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

Funcao f_divisao (): real

  Var
  lv_div1: Real
  lv_div2: Real


  Inicio
  Escreva ("Digite o dividendo: ")
  Leia (lv_div1)
  Escreva ("Digite o divisor: ")
  Leia (lv_div2)
		se (lv_div2 = 0) então
		  escreval ("Não é possível dividir por 0")
       senao
        Escreval ("Resultado= ", lv_div1/lv_div2)
      fimse
  Retorne 0
fimfuncao

Funcao f_multiplicacao (): real

  Var
  lv_mult1: Real
  lv_mult2: Real

  Inicio
  Escreva ("Digite o primeiro valor: ")
  Leia (lv_mult1)
  Escreva ("Digite o segundo valor: ")
  Leia (lv_mult2)
  Escreval ("Resultado= ", lv_mult1*lv_mult2)
  Retorne 0
  fimfuncao

funcao f_fatorial(): real
var
    lv_resultado,lv_NumFat,lv_contador: real

inicio
    Escreval("Digite um número: ")
    leia(lv_NumFat)

    enquanto lv_NumFat < 0 faca
        Escreval("Digite um numero maior ou igual a zero!")
        leia(lv_NumFat)
    fimenquanto

    lv_resultado <- 1
    lv_contador <- 1

    enquanto lv_NumFat > lv_contador faca
        lv_resultado <- lv_resultado * lv_NumFat
        lv_NumFat <- lv_NumFat - 1
    fimenquanto

    escreval("O fatorial é: ", lv_resultado)

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
   Escreva ("Digite o valor do capital:")
   leia(lv_capital)
   Escreva ("Digite o valor do tempo (em meses):")
   leia(lv_tempo)
   Escreva ("Digite o valor da taxa (em porcentagem ao mês):")
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
   Escreva ("Digite o valor do capital:")
   leia(lv_capital)
   Escreva ("Digite o valor do tempo (em meses):")
   leia(lv_tempo)
   Escreva ("Digite o valor da taxa (em porcentagem ao mês):")
   leia(lv_taxa)

   lv_resultado <- lv_capital *(1+(lv_taxa/100))^lv_tempo

   escreval ("o valor do juros composto é: ", lv_resultado - lv_capital)
   
   escreval ("o valor do Montante é: ", lv_resultado)
   retorne 0

fimfuncao // f_jurosComposto

//Função que converte um numero decimal pra binario
funcao f_calculoDecimalToBinario(): real
  var
    lv_numBin: caracter
    resto,lv_numDec: inteiro
  inicio
    escreval("Digite o numero Decimal:")
    leia(lv_numDec)
    lv_numBin<- ""

    enquanto lv_numDec > 0 faca
      resto <- lv_numDec%2
      lv_numBin <- NumpCarac(resto) + lv_numBin
      lv_numDec <- lv_numDec div 2
    fimenquanto

    escreval("Resultado da conversão para numero binario: ")
    escreval(lv_numBin)
    retorne 0
fimfuncao


//Função que calcula a conversao de binario para decimal
funcao f_calculoBinarioToDecimal(): real
  var
    lv_numDec, lv_potencia,lv_digito: real
    lv_numBin: caracter
    lv_tam:inteiro
    //lv_potencia,lv_numBin,lv_digito: inteiro
  inicio
    Escreval("Digite o numero Binario:")
    leia(lv_numBin)
    lv_tam<- compr(lv_numBin)
    lv_numDec <- 0
    lv_potencia <- 0

    enquanto lv_tam > 0 faca
      lv_digito <- caracpnum( copia(lv_numBin:lv_tam:1) )
      lv_numDec <- lv_numDec + lv_digito * 2^lv_potencia
      lv_numBin <- copia(lv_numBin:1:lv_tam - 1)
      lv_potencia <- lv_potencia + 1
      lv_tam<- lv_tam - 1
    fimenquanto

    escreval("Resultado da conversão para numero Decimal: ")
    escreval(lv_numDec)
    retorne 0
fimfuncao

funcao f_calculoBinarioToHexacimal():real
  var
    lv_resto, lv_digitoE, lv_numBin, lv_numHexa: caracter
    lv_tamNumBin, lv_posicaoDig: inteiro
  inicio

    lv_numHexa <- ""
    Escreval("Digite o número Binário: ")
    leia(lv_numBin)
    lv_posicaoDig<-1
    lv_tamNumBin <- compr(lv_numBin)

    // Verifica se o número de dígitos binários é divisível por 4, adiciona zeros à esquerda caso precise
    enquanto lv_tamNumBin % 4 <> 0 faca
      lv_numBin <- "0" + lv_numBin
      lv_tamNumBin <- lv_tamNumBin + 1
    fimenquanto

    // Percorre o número binário em blocos de 4 dígitos para converter em hexadecimal
    enquanto lv_posicaoDig <= lv_tamNumBin faca
      lv_resto <- copia(lv_numBin, lv_posicaoDig, 4)
      escolha lv_resto
        caso "0000"
          lv_digitoE <- "0"
        caso "0001"
          lv_digitoE <- "1"
        caso "0010"
          lv_digitoE <- "2"
        caso "0011"
          lv_digitoE <- "3"
        caso "0100"
          lv_digitoE <- "4"
        caso "0101"
          lv_digitoE <- "5"
        caso "0110"
          lv_digitoE <- "6"
        caso "0111"
          lv_digitoE <- "7"
        caso "1000"
          lv_digitoE <- "8"
        caso "1001"
          lv_digitoE <- "9"
        caso "1010"
          lv_digitoE <- "A"
        caso "1011"
          lv_digitoE <- "B"
        caso "1100"
          lv_digitoE <- "C"
        caso "1101"
          lv_digitoE <- "D"
        caso "1110"
          lv_digitoE <- "E"
        caso "1111"
          lv_digitoE <- "F"
      fimescolha

      lv_numHexa <-  lv_numHexa + lv_digitoE
      lv_posicaoDig <- lv_posicaoDig + 4
    fimenquanto

    escreval("Resultado da conversão para lv_numHexadecimal: ")
    escreva(lv_numHexa)
	retorne 0
fimfuncao


funcao f_calculoHexadecimalToBinario():real
  var
    lv_digitoHex, lv_numHex, lv_numBin, lv_digitoEmBin: caracter
    lv_posicao, lv_tamanho: inteiro
  inicio

    Escreval("Digite o número Hexadecimal: ")
    leia(lv_numHex)
    lv_tamanho <- compr(lv_numHex)
    lv_numBin <- ""
    lv_posicao <- 1

    // Percorre o número hexadecimal convertendo cada dígito em sua representação binária equivalente
    enquanto lv_tamanho > 0 faca
      lv_digitoHex <- copia(lv_numHex:lv_posicao:1)

      escolha lv_digitoHex
         caso "0"
           lv_digitoEmBin <- "0000"
         caso "1"
           lv_digitoEmBin <- "0001"
         caso "2"
           lv_digitoEmBin <- "0010"
         caso "3"
           lv_digitoEmBin <- "0011"
         caso "4"
           lv_digitoEmBin <- "0100"
         caso "5"
           lv_digitoEmBin <- "0101"
         caso "6"
           lv_digitoEmBin <- "0110"
         caso "7"
           lv_digitoEmBin <- "0111"
         caso "8"
           lv_digitoEmBin <- "1000"
         caso "9"
           lv_digitoEmBin <- "1001"
         caso "A"
           lv_digitoEmBin <- "1010"
         caso "B"
           lv_digitoEmBin <- "1011"
         caso "C"
           lv_digitoEmBin <- "1100"
         caso "D"
           lv_digitoEmBin <- "1101"
         caso "E"
           lv_digitoEmBin <- "1110"
         caso "F"
           lv_digitoEmBin <- "1111"
      fimescolha

      // Adiciona o dígito hexadecimal ao resultado final e atualiza contadores
      lv_numBin <-  lv_numBin + lv_digitoEmBin
      lv_tamanho <- lv_tamanho - 1
      lv_posicao <- lv_posicao + 1
    fimenquanto

    escreval("Resultado da conversão para Binário: ")
    escreval(lv_numBin)
    retorne 0
fimfuncao

//Concatena na ordem digitada duas strings
funcao ConcatenarString() : real
var
lv_res,lv_string1,lv_string2: caracter
Inicio
   escreval("Digite a primeira string: ")
   leia(lv_string1)
   escreval("Digite a segunda string: ")
   leia(lv_string2)
   lv_res <- lv_string1 + lv_string2
   escreval("Resultado da combinação de Strings: ")
   escreval(lv_res)
   retorne 0

fimfuncao

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
//    escreval("7-Juros Compostos")
      escreval("8-Conversao B16 para B2")
      escreval("9-Conversao B2 para B16")
      escreval("10-Concatenacao de strings")
      escreval("11-Conversao B10 para B2")
      escreval("12-Conversao B2 para B10")
      escreval("0-Encerrar calculadora")

      leia(lv_item)

      escolha lv_item
      caso 1
         lv_retorno <- f_calculoSoma()
      caso 2
         lv_retorno <- f_calculoSubtracao()
      caso 3
         lv_retorno <- f_multiplicacao ()
      caso 4
         lv_retorno <- f_divisao ()
      caso 5
         lv_retorno <- f_fatorial()
      caso 6
         lv_retorno <- f_calculoJuros ()
      caso 7
         lv_retorno <- f_jurosComposto ()
      caso 8
         lv_retorno <- f_calculoHexadecimalToBinario()
      caso 9
         lv_retorno <- f_calculoBinarioToHexacimal()
      caso 10
         lv_retorno <- ConcatenarString()
      caso 11
         lv_retorno <- f_calculoDecimalToBinario()
      caso 12
         lv_retorno <- f_calculoBinarioToDecimal()
      fimescolha

   fimenquanto


fimfuncao //f_navegacao()

Inicio //INICIO DO PROGRAM PRINCIPAL


gv_retorno <- f_navegacao()

Fimalgoritmo
