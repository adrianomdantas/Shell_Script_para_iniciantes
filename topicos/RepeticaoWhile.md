# 20 - Estrutura de Repetição While (loop)

### Estrutura while

O comando while permite definir um comando a testar e então iterar por um conjunto de comandos enquanto o comando definido de teste retornar status de saída zero.  

Quando o comando de teste retornar status de saída diferente de zero, o while para de executar seu bloco de comandos e o loop é encerrado.  

**Sintaxe**
```
While comando_de_teste
do
  bloco de comandos
done
```

O comando_de_teste usa o mesmo formato de estrutura **if-then**, e podemos usar o comando test para testar condições.  

**OBS.:** o status de saída do comando de teste deve mudar em algum momento dirante as iterações, ou tetremos um loop infinito.  
```
**Exemplo de comando while**
#!/bin/bash
#Testando o comando while

var=100
while [ $var -gt 0 ]
do
  echo $var
  var=$[ $var - 1 ]
done
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|19 - Estrutura de Repetição for (loop)](RepeticaoFor.md)||