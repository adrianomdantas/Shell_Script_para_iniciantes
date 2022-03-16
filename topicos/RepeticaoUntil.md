[![N|Solid](Imagens/Home.jpeg "Ir para Home")](/README.md/)

# 21 - Estrutura de Repetição Until (loop)

### Comando Until  

O comando until opera de forma oposta ao comando while.  

É necessário especificar um comando de teste que retorne um status de saída diferente de zero para que o bloco de comando listado no loop seja executado.  

Quando o comando de teste retornar status de saída zero, o loop termina.  

### Until - Sintaxe

```
Until comando_de_teste
do
  Bloco de comandos a executar
done
```

### Comando until - exemplo
```
#!/bin/bash
# Teste da estrutura de repetição until

var=50
until [ $var -eq 0 ]
do
  echo $var
  var-$[ $var -2 ]
done
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[20 - Estrutura de Repetição While (loop)](RepeticaoWhile.md)|[22 -  Laço for no estilo Linguagem C ](LacoForEstiloC.md)|
