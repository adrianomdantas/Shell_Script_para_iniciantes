
# 14 - Condicional aninhado if-then com elif

Ás vezes é necessário verificar cárias situações relacionadas em seu script.  

Em vez de ter de excrever declarações if-then, você pode usar uma versão aternativa da seção **else**, chamada **Elif**.  

O Shell bash executará as declarações if em ordem, e apenas a primeira que retornar status **0** terá a seçãso then correspondente executada

O Elif continua uma seção else co outra declaração if-the.  
Veja a sintaxe

### Comando **if** aninhado

```
if comando1
then
  comandos
elif comandos2
then
  comandos2
elif comandos3
then
  comandos3
else
  comandos-else
fi
```
Exemplo:
```
#!/bin/bash
#3 teste de if=then ainhado
vr1="Fulano"
var2="Ciclana"

if ls /$var1
then
  echo "Diretório do usuário $var1 encontrado"
elif ls /$var2
then
  echo "diretório do usuário $var2 é que foi encontrado"
else
  echo "Nenhum dos dois diretórios foram encontrados"
fi
```

Neste caso, se o diretório Fulano existir ou mesmo se o doretório Ciclana existir, o programa exibirá a frase **Diretório do usuário *fulano* encontrado**, se apenas o diretório Ciclana existie, o programa exibira a frase **diretório do usuário *Ciclana* é que foi encontrado**,e caso nenhum dos dois diretórios existirem, o programa exibirá a frase **Nenhum dos dois diretórios foram encontrados**.

|Topico Anterior|Próximo Topico|
|:---|---:|
|[[13 - Estrutura de decisão condicional if then else](EstrutDecisCondicIfThenElse.md)|[15 Comparações numéricas e de strings com comando test](CompNumStrTeste.md)|