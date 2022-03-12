# 21 -  Laço for no estilo Linguagem C

### Comando for no estilo mLingagem C  

É possivel uar uma estrutura de repetição **for** no estilo da linguagem C em um script do shell.  

Neste caso, teremos uma variável contadora que irá controlar o número de iteeração do loop.  

**Sintaxe:**
```
for (( atrib_variável; condição; processo_iteração ))
```
**Exemplo**
```
#!/bin/bash
# Exemplo de comando for no estilo linguagem C
for (( i = 1; 1 <= 15; i++ ))
do
  echo "Numero: $i"
done
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[21 -Estrutura de Repetição Until (loop)](RepeticaoUntil.md)||