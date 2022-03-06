## Arrays de Ambiente

Variaveis de ambiente podem ser usadas com arrays - variaveis que podem armazenar múltiplos valores.   
Para cinfigurar um array, liste os seus valores entre parênteses:
```
testearray=(laranja morango acerola abacaxi)
```
Para Acessar um elemento no array, use seu número de índice (entre colchetes) contando a partir do zero (todo o conjunto entre chaves:
```
echo ${testearray[1]}
```
Para mostrar todo conteudo do array, use o asterisci " * " no lugar do índice:   
```
echo ${testearray[*]}
```
#### Exemplo:  
```
~$ testearray=(laranja morango acerola abacaxi)
~$ echo $testearray
laranja
~$echo ${testearray[2]}
acerola
~$ echo ${testearray[*]}
laranja morango acerola abacaxi
~$
```

Alterar valores de uma posição específica:   
`~$ testearray[2]=banana`   

Remover itens individuais:   
`~$ unset testearray[2]`  

Remover o array todo:  
`~$ unset testearray[*]`  

Para acrescentar um item na array:  
```
~$ meuarray=(a b c)
~$ echo ${meuarray[*]}
a b c
~$ meuarray[3]=d
~$ echo ${meuarray[*]}
a b c d
~$
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[Variaveis de ambiente](Variaveis_de_ambiente.md)|[Aliases e Funções no Bash](Aliases.md)|