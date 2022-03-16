[![N|Solid](Imagens/Home.jpeg "Ir para Home")](/README.md/)

# 10 - Cálculos aritméticos simples no bash
É possível realizar cálculos matemátics diretamente do bash, e atin=buir o resultado de uma operação a uma variável.  
Para isoo, englobe a equqção usando um cifrão e colchetes:  
```
variável=$[operação]
```
Ecemplo:  
```
var1=$[2 + 6]
echo $var1
var2=$[$var1 * 2]
echo $var2
```
Criando um script com calculos no bash   

```
~$ vi scriptcalculo.sh
#!/bin/bash
#Calculo simples no bash

var1=10
var2=5
var3=2
var4=$[$var1 * ($var2 - $var3)]
echo "o resultado do calculo é $var4"
:wq
```
```
~$ ./scriptcalculo.sh
o resultado do calculo é 30
```
### Calculo no bash - problema 
Porém, há um problelma em realizar cãlculos com o shell bash, seus operadores matemáticoos só suportam aritmética de n[umeors inteiros, veja:
```
~$ var1=9
~$ var2=2
~$ var3=$[$var1 / $var2]
~$ echo "Resultado: $var3"
Resultado: 4
```
O resultado deveria ser 4,5 mas o shell retornou 4.


|Topico Anterior|Próximo Topico|
|:---|---:|
|[09 - Redirecionamento de entrada e saída de dados](redirecionamento_entrada.md)|[11 - Usando a calculadora bc em scripts](CalculoBC.md)|
