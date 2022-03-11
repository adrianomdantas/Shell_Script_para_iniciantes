# 18 - Comando case - teste de múltiplas condições
### Comandos case  

Este comando verifica condições múltiplas que podem ocorrer em uma variável, em um formato parecido com uma lista.   

A estrutura case substitui e simplifica o uso do **if-then-elif** com várias declarações.  

O comando case compara o calor de uma varável ou expressão com os valores da lista criada.  
E os valores "Baterem", o shell executará os comandos específicos para o valor  
 
### Comando case - Sintaxe
```
case <variável> in
  valor1)
    comandos 1;;
  valor2)
    comandos 2;;
  valores3 | valores4) # o "|" representa a condição "ou"
    comandos 3 e 4;;
  *)
    comandos-padrão;;
esac
```
**Exemplo de uso do comando case**
```
#!/bin/bash
#Usando o comando case
local=quarto

case $local in
  quarto)
    echp "Você está no quarto";;
  cozinha)
    echo "Você está na cozinha";;
  sala)
    echo "Você está na sala";;
  banheiro | lavanderia)
    echo "Foi ao banheiro ou a lavanderia";;
  *)
    echo "Você não está dentro de casa";;
esac
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[17 - Testar condições compostas com AND e OR](TestCondCompAndOr.md)|[19 - Estrutura de Repetição for (loop)](RepeticaoFor.md)|