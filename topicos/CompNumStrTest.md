# Comparações numéricas e de strings com comando test

### O Comando test

A declaração **if-then** não consegue avaliar nenhuma condição que não seja o código de status de saída de um comando.  

Porém, é possível avaliar outras condições usando o comando **test** em uma declaração **if-then**.  

O comando test avalia uma condição, e se ela retornar True(V), o comando **test** retorna código de status de saída igual a zero; caso contrário retorna status de saída igual a 1

### Uso do test com if-then

```
if test condições
then
comandos
fi
```
O shell bash fornece uma maneira alternativa (mais usada) de declarar o comando test com o if-then:
```
if[ condiçoes ]
then
comandos
fi
```
Os comandos definem a condição usada pelo test; deve haver espaçoes antes e depois da condição.

### Classes de Condições

O comando test pode avaliar três classes de condições:
- Comparações Numéricas
- Comparações de String
- Comparações de Arquivos  
### Comparações numéricas com test

| Comparação | Descrição|  
|:---|:---|  
|n1 -eq n2|Verifica se n1 é igual a n2|  
|n1 -ge n2|Verifica se n1 é maior ou igual a n2|
|n1 -gt n2|Verifica se n1 é maior do que n2|
|n1 -le n2|Verifica se n1 é menor ou igual a n2|
|n1 -lt n2|Verifica se n1 é menor do que n2|
|n1 -ne n2|Verifica se n1 é diferente de n2|

Avaliam tanto número quanto variável
O comando test não suporta aritmética de ponto flutuante, portantoo só compara numeros inteiros.  

### Comparação numéricas com test - exemplo
```
#!/bin/bash
#Comparações numéricas com test e if-then
var1=10
var2=15
if[ $var1 -gt 8 ]
then
  echo "Avariável de valor $var1 é maior que 8"
fi
if[ $var1 -eq $var2 ]
then
  echo "os valores são iguais"
else
  echo "os valores são diferentes"
fi
```
Caso os valores das variaveis forem diferentes e a var1 for maior que 8, o programa vai indicar que o valor da var1 é maior que 8 e também vai indicar que os valores das variaveis são diferentes, caso os valores das variaveis forem iguasi e menores que 8, então o programa só vai indicar que as variaveis são iguais.  

### Comparações de string com test

O comando test também permite realizar comparações entre valores de strings

Vejamos na tabela a seguir os operadores de comparações e seus significados.

|Comparação|DEscrição|
|:---|:---|
|str1 = str2|verifica se str1 é idêntica a strs|
|str1 !- str2|verifica se str1 é diferente de str2|
|str1 < str2|verifica se str1 é "menor" que srt2 (ordem alfabética)|
|str1 > str2|verifica se str1 é "aior" que str2 (ordem alfabética)|
|-n str1|verifica se str1 tem comprimento maior que str zero (não vazia)|
|-z str1|verifica se str1 tem comprimento zero (vazia)|

### Exemplo de comparações de strings

```
~$ vi testestring1.sh
#!/bin/bash
#Testar igualdade de string
nome=Fulano
if [ $USER = $nome ]
then
  echo "olá $nome"
fi
:wq
~$ ./testestring1
olá Fulano
```
```
~$ vi testestring2.sh
#!/bin/bash
#Testar não=igualdade de strings
fruta=laranja
if [ $fruta! = laranja ]
then
  echo "A fruta é $fruta"
else
  echo "A fruta não é laranja, a fruta é $fruta"
fi
~$ /.testestring2.sh
A fruta é laranja
```
```
~$ vi testestring3.sh
#!/bin/bash
#Testas sevariável possui conteúdo
var1=abacate
var2=''
if [ -n $var1 ]
then
  echo "variável não está vazia, contém o valor $var1"
else
  echo "variavel está vazia
if [ -z $var2 ]
then
  echo "Variável está vazia"
else
  echo "Variável não está vazia"
fi
```
|Topico Anterior|Próximo Topico|
|:---|---:|
|[14 - Condicional aninhado if-then com elif](CondicionalIfThenElif.md)|[16 - Comparando arquivos e diretórios com comando test](ComArqDirTest.md)|