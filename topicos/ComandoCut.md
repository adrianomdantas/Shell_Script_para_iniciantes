# Comando cut

O comando cut serve para cortar colunas de dados separados por algum caractere delimitador e imprimir estas informações que foram cortadas de um arquivo na saida padrão, o arquivo origina não será modificado mas você pode criar um novo arquivo a partirdos dados extraidos dese arquivo original.  
A sintaxe dele é simples:  
```
cut [opções] [arquivo]
```
opções mais usadas

-c seleciona apenas pelo caractere
-d determina o delimitador das colunas
-f permite selecionar quais colunas ou campos dos arquivo serão retornados

Exemplo, temos um arquivo de 3 colunas separadas por espaço n° de ordem, nome das frutas e preço:
```
[root@localhost Fulano]# cat listaDeFrutas
1 Laranja 2,00
2 Maçã 3,50
3 Açaí 7,00
4 Tangerina 4,00
5 Abacaxi 4,50
6 Caju 6,00
7 Mamão 2,30
8 Pitanga 4,30
9 Acerolla 6,30
10 Graviola 3,80
11 Romã 8,50
[root@localhost Fulano]#  
```
Podemos usar o comando **cut** para extrair informações deste arquivo
```
[root@localhost Fulano]# cut -d' ' -f2 listaDeFrutas
Laranja
Maçã
Açaí
Tangerina
Abacaxi
Caju
Mamão
Pitanga
Acerolla
Graviola
Romã
[root@localhost Fulano]#
```
-d' ' --> definimos o delimitador
-f2 --> informamos a coluna que querimos exibir

Podemos também exibir mais do que uma columa por vez:
```
[root@localhost Fulano]# cut -d' ' -f 2,3 listaDeFrutas
Laranja 2,00
Maçã 3,50
Açaí 7,00
Tangerina 4,00
Abacaxi 4,50
Caju 6,00
Mamão 2,30
Pitanga 4,30
Acerolla 6,30
Graviola 3,80
Romã 8,50
[root@localhost Fulano]#
```
No caso do arquivo ter varias colunas e quisermos selecionar um intervado de colunas a serem exibidas podemor usar o "-" no lugar da ",":
```
[root@localhost Fulano]# cut -d' ' -f 2-5 listaDeFrutas
```
podemos também trazer as informaçõe em ordem alfabetica com o comando **sort**
```
[root@localhost Fulano]# cut -d' ' -f 2,3 listaDeFrutas | sort
Abacaxi 4,50
Açaí 7,00
Acerolla 6,30
Caju 6,00
Graviola 3,80
Laranja 2,00
Maçã 3,50
Mamão 2,30
Pitanga 4,30
Romã 8,50
Tangerina 4,00
[root@localhost Fulano]#
```
um outro exemplo com um delimitador ":"
```
[root@localhost Fulano]# cut -d: -f1 /etc/passwd
root
bin
daemon
adm
lp
sync
shutdown
```
Podemos também trabalhar com caracteres e não com campos
```
[root@localhost Fulano]# cut -c1,2 listaDeFrutas
1
2
3
4
5
6
7
8
9
10
11
[root@localhost Fulano]#
```
Um ultimo exemplo, é combinar o comando grep cpm o cut
```
[root@localhost Fulano]# grep "/bin/bash" /etc/passwd | cut -d: -f1,3
root:0
kojibuilder:989
[root@localhost Fulano]#
```