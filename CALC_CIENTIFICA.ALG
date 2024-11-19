Algoritmo "Calc_cientifica"
//
//
// Descrição   : Calculadora cientifica  - BancodeBravos
// Autor(a)    : Matheus Volotao, Matheus Souza, Bruna Camille, Guilherme C.
// Abimael S., Eduardo D., Joao,Caue,Raissa J.,
// Data atual  : 9/14/2024

Var // DECLARACAO DAS FUNCOES/PROCEDIMENTOS AQUI
gv_retorno:inteiro

 funcao f_calculoSoma() : real
 var
 lv_N1,lv_N2: real
 lv_resultado : real
 inicio
 escreva ("Escreva o primeiro número: ")
   leia (lv_N1)
   escreva ("Escreva o segundo número: ")
   leia (lv_N2)
   lv_resultado <- lv_N1+lv_N2
 se lv_resultado > 1000000000000000 então
   escreval ("Limite da soma ultrapassado")
   senão
   escreva ("O resultado é: ")
   escreval (lv_resultado:1:2)
 fimse
   retorne 0
 fimfunção

 funcao f_calculoSubtracao() : real
 var
 lv_M1,lv_M2: real
 lv_resultado : real
 inicio
 escreva ("Escreva o primeiro número: ")
   leia (lv_M1)
   escreva ("Escreva o segundo número: ")
   leia (lv_M2)
   lv_resultado <- lv_M1-lv_M2
se lv_M1 > 1000000000000000 entao
   escreval ("Limite da subtração ultrapassado")
   senão
   escreva ("O resultado é: ")
   escreval (lv_resultado:1:2)
fimse
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
        Escreval ("O resultado é: ", lv_div1/lv_div2:1:2)
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
  Escreval ("O resultado é: ", lv_mult1*lv_mult2:1:2)
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

    enquanto lv_NumFat >= 171 faca
        Escreval("ERRO: Digite um numero menor, valor limite excedido")
        leia(lv_NumFat)
    fimenquanto

    lv_resultado <- 1
    lv_contador <- 1

    enquanto lv_NumFat > lv_contador faca
        lv_resultado <- lv_resultado * lv_NumFat
        lv_NumFat <- lv_NumFat - 1
    fimenquanto

    escreval("O fatorial é: ", lv_resultado:1:2)

    retorne 0
fimfuncao

funcao f_segundoGrau():real
 Var
   a, b, c, delta, raiz1, raiz2: real

Inicio
   EscrevaL("Digite o coeficiente a: ")
   Leia(a)
   Se a = 0 entao
      EscrevaL("Não é uma equação do segundo grau.")
   Senao
      EscrevaL("Digite o coeficiente b: ")
      Leia(b)
      EscrevaL("Digite o coeficiente c: ")
      Leia(c)

      delta <- b * b - 4 * a * c
      EscrevaL("O valor de delta é:",delta:1:2)

      Se delta < 0 entao
         EscrevaL("Sem raízes reais.")
      Senao
         Se delta = 0 entao
            raiz1 <- -b / (2 * a)
            EscrevaL("Raiz única: ", raiz1)
         Senao
            raiz1 <- (-b + raizQ(delta)) / (2 * a)
            raiz2 <- (-b - raizQ(delta)) / (2 * a)
            EscrevaL("As raízes são ", "x1:",raiz1:1:2, " e ", "x2:",raiz2:1:2)
         FimSe
      FimSe
   FimSe
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

   Escreval ("O valor do juros é:" ,lv_juros:1:2)

   //calculo do lv_montante
   lv_montante <- lv_juros + lv_capital

   Escreval ("o valor do montante é:", lv_montante:1:2)

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

   escreval ("o valor do juros composto é: ", lv_resultado - lv_capital:1:2)

   escreval ("o valor do Montante é: ", lv_resultado:1:2)
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

//FUNÇÕES OCTAIS
//FUNCAO OCTAL PRA BINARIO
funcao f_calculoOctaltoBinario() : real
 var
    lv_digitoOct, lv_numOCt, lv_numBin, lv_digitoEmBin: caracter
    lv_posicao, lv_tamanho: inteiro
 inicio

    Escreval("Digite o número Octal: ")
    leia(lv_numOct)
    lv_tamanho <- compr(lv_numOct)
    lv_numBin <- ""
    lv_posicao <- 1

    enquanto lv_tamanho > 0 faca
      lv_digitoOct <- copia(lv_numOct:lv_posicao:1)

      escolha lv_digitoOct
         caso "0"
           lv_digitoEmBin <- "000"
         caso "1"
           lv_digitoEmBin <- "001"
         caso "2"
           lv_digitoEmBin <- "010"
         caso "3"
           lv_digitoEmBin <- "011"
         caso "4"
           lv_digitoEmBin <- "100"
         caso "5"
           lv_digitoEmBin <- "101"
         caso "6"
           lv_digitoEmBin <- "110"
         caso "7"
           lv_digitoEmBin <- "111"

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

// FUNCAO BINARIO PRA OCTAL
funcao f_calculoBinariOtoOctal() : real
  Var
    lv_resto, lv_digitoE, lv_numBin, lv_numOctal: caracter
    lv_tamNumBin, lv_posicaoDig: inteiro
  inicio

    lv_numOctal <- ""
    Escreval("Digite o número Binário: ")
    leia(lv_numBin)
    lv_posicaoDig<-1
    lv_tamNumBin <- compr(lv_numBin)


    enquanto lv_tamNumBin % 3 <> 0 faca
      lv_numBin <- "0" + lv_numBin
      lv_tamNumBin <- lv_tamNumBin + 1
    fimenquanto


    enquanto lv_posicaoDig <= lv_tamNumBin faca
      lv_resto <- copia(lv_numBin, lv_posicaoDig, 3)
      escolha lv_resto
        caso "000"
          lv_digitoE <- "0"
        caso "001"
          lv_digitoE <- "1"
        caso "010"
          lv_digitoE <- "2"
        caso "011"
          lv_digitoE <- "3"
        caso "100"
          lv_digitoE <- "4"
        caso "101"
          lv_digitoE <- "5"
        caso "110"
          lv_digitoE <- "6"
        caso "111"
          lv_digitoE <- "7"
      fimescolha

      lv_numOctal <-  lv_numOctal + lv_digitoE
      lv_posicaoDig <- lv_posicaoDig + 3
    fimenquanto

    escreval("Resultado da conversão para Octal: ")
    escreval(lv_numOctal)
	retorne 0
fimfuncao

// FUNCAO BINARIO PRA HEXADECIMAL
funcao f_calculoBinarioToHexacimal():real
  var
    lv_resto, lv_digitoE, lv_numBin, lv_numHexa,aux: caracter
    lv_tamNumBin,i, lv_posicaoDig: inteiro
    lv_numBinReal:real
    lv_ehValido:logico
  inicio

    lv_numHexa <- ""
    repita
          Escreval("Digite o número Binário: ")
          leia(lv_numBin)
          // Inicializa a variável de validação
          lv_ehValido <- verdadeiro
          // Verifica cada caractere da string
          se   lv_numBin = "" entao
                lv_ehValido<- falso
          fimse

          para i <- 1 ate compr(lv_numBin) faca
                 aux <- copia(lv_numBin,i,1)
                 //escreval("char: ", aux)
                 se (aux <> "1") e (aux <> "0") entao
                    lv_ehValido<- falso
                 fimse
          fimpara
          
          se (nao lv_ehValido) entao
            escreval("Número inválido! Insira apenas números binários (0 ou 1).")
          fimse
    ate (lv_ehValido)
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
    // retirar os 0 as esquerdas do numero
    aux <- copia(lv_numHexa,1,1)
    enquanto aux = "0" faca
        // escreval("primeiro nuemero:", aux)
        lv_numHexa<- copia(lv_numHexa,2,compr(lv_numHexa))
        aux <- copia(lv_numHexa,1,1)
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
funcao f_concatenarString() : real
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
   lv_menu:caracter

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
      escreval("8-Conversao B16 para B2")
      escreval("9-Conversao B2 para B16")
      escreval("10-Concatenacao de strings")
      escreval("11-Conversao B10 para B2")
      escreval("12-Conversao B2 para B10")
      escreval("13-Conversao B8 para B2")
      escreval("14-Conversao B2 para 8")
      escreval("15-Resolução de equação do segundo grau")

      escreval("0-Encerrar calculadora")

      leia(lv_item)
      limpatela
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
         lv_retorno <- f_concatenarString()
      caso 11
         lv_retorno <- f_calculoDecimalToBinario()
      caso 12
         lv_retorno <- f_calculoBinarioToDecimal()
      caso 13
         lv_retorno <- f_calculoOctaltoBinario()
      caso 14
         lv_retorno <- f_calculoBinariotoOctal()
      caso 15
	 lv_retorno <- f_segundoGrau()
      fimescolha

se lv_item <> 0 entao
escreval("Digite qualquer caracter para retornar ao menu.")
leia(lv_menu)
fimse

	limpatela // Eduardo D. -> Modificação para limpar a tela a cada execução da calculadora.
   fimenquanto


fimfuncao //f_navegacao()

Inicio //INICIO DO PROGRAM PRINCIPAL


gv_retorno <- f_navegacao()

Fimalgoritmo
