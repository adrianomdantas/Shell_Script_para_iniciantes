# 13 - Estrutura de decisão condicional if then else


### Comandos Estruturados

Comando estruturado é um comando que permite tomar decisões e controlar o fluxo de um programa

### Decisão Condicional: if-then

**Sintaxe:**
```
if comando
then
  comandos
fi
```
ou
```
if comando; then
  comandos
fi
```
A declaração **if** do shell bash executa o comando definido na linha **if**.  
Se o status de saída do comando for zero, os comandos listados após a seção **then** serão executados.  
Caso contrário, esses comandos serão ignorados.  

```
~$ vi ifsimples.sh
#!/bin/bash
# Exemplo de condicional simples em um script
if cd/
then
  echo "Diretório raiz encontrado!"
fi
:wq
~$ chmod 755 ifsimples.sh
~$ ./ ifsimples
Diretório raiz encontrado!
~$
``` 
Caso a saida for direfente de zero, ele retorna um mensagem de erro, para prever uma ação caso a saida for diferente de zero usamos uma decisão condicional composta.

### Decisão Condicional: if-then-Else

```
if comando
then
  comandos
else
  outros comandos
fi
```
O condicional composto permite executar um bloco de código caso o comando testado retorne código de status zero, e outro bloco de código caso retorne status diferente de zero.

```
~$ vi ifcomposto.sh
#!/bin/bash
# Teste de condicional composto
if ls /home/nanomd/teste
then
  echo "Diretório teste encontrado!"
else
  echo "Diretório teste não encontrado"
fi
:wq
~$ ./ifcomposto.sh
ls: impossivel acessar /home/nanomd/teste: Arquivo ou diretório não encontrado
Diretório teste não encontrado
~$
```
Como o diretório não existe (saida diferente de 0), o segundo bloco **else** foi executado.

|Topico Anterior|Próximo Topico|
|:---|---:|
<<<<<<< HEAD
|[12 - Status de Saída dos comandos e o comando exit](StatusDeSaida.md)|[14Condicional aninhado if-then com elif](CondicionalIfThenElif.md)|
=======
|[12 - Status de Saída dos comandos e o comando exit](StatusDeSaida.md)|[14Condicional aninhado if-then com elif]()|
>>>>>>> b076e81311d6cc3b3faf309752480265c8bc3d36
