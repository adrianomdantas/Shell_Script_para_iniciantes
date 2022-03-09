# Usando a calculadora bc em scripts

A calculadora do bash é na verdade uma linguagem de programação que permite executar expressões de ponto flutuante no terminal.  
Ela reconhece:  
- Números inteiros e FP(ponto flutuante)
- Variáveis simples e arrays
- Comaentários estilo "C" (/* */)
- Expressões
- Declarações condicionais if-then
- Funções

### Usando a calculadora do Bash - bc

Pada acessar a calculadora do bash no shell, digite o comando `bc`  
Você entrará no modo interatoivo da calculadora.  
Digite então as expressões que deseja calcular e pressione Enter.  
Para sair da calculadora, digite `quit`  
Para aprender a usar a calculadora bc, basta digitar `man bc` para acesar o manual do comando  

### Aritmética de ponto flutuante na calculadora bc  

É controlada pela variável especial `scale`. Você configura seu valor para o numero desejado de casas decimais que necessita nos resultados.  
Por padrão, a variavel **scale** vem definida com valor zero (0), ou seja, se você nã configirar esta variavel, a calculadora bc funcionará como um tereminal simples do bash, faz o calculo sem apresentar as casas decimais.

 ```
 ~$ bc -q
2 / 4
0
```
como a variavel scale não foi configurada, a calculadora está mostrando o resultado com zero casas decimais.   
configurando a variavel **scale**  
```
scale=2
2 / 4
.50
```
aumentando as casas decimais no **scale**  
```
scale=4
2 / 4
.5000
```

Você também pode declarar variaveis no bc:
```
a=4
b=6
a/b
.6666
```
### Usando a calculadora bc em scripts

Para usar a bc em um script, use a crase(backtick`) para rodar o comando e atribuir seu valor a uma variável:  
```
variável=`echo"variáveis; expressão"|bc` 
```

Exemplo - Digite os comandos a seguir no terminal:  
```
~$ var1=`echo "scale=2; 2 / 5" | bc`
~$ echo "Resultado:$var1"
.40
```


#### 1 Criando um script para cálculos simples:
```
~$ vi testebc.sh
#!/bin/bash
var1=100
var2=30
var3=`echo "scale=4; $var1 / $var2" | bc`
echo"Resultado: $var3
:wq
~$ chmod 755 testebc.sh
~$ ./testebc.sh
Resultado: 3.3333
```
Esta técnica funciiona bem para cálculos simples, mas em cálculos mais complexos, é recomendável usar a técnica do redirecionamento de entrada inline.

### 2 Criando scripts para cãlculos mais complexos:
```
~$ vi testebc2.sh
#!/bin/bash
var1=6
var2=5
var3=4
var4=`bc << EOF
scale=44
a1=($var1 * $var2)
b1=($var3 + $var1)
a1 + b1
EOF
`
echo"Resultado: $var4"
~$ chmod 766 testebc2.sh
~$ ./testebc.sh
Resultado: 40
~$
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[Cálculos aritméticos simples no bash](Calculos.md)|[Status de Saída dos comandos e o comando exit]()|