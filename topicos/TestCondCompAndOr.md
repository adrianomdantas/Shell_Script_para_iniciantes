[![N|Solid](Imagens/Home.jpeg "Ir para Home")](/README.md/)

# 17 - Testar condições compostas com AND e OR

### Teste de composições compostas

A declaração **if-then** permite usar lógica booleana para combinar testes.  
Podemos usar dois operadores booleanos:  
```
#AND
[ condição1 ] && [ condição2 ]

#OR
[ condição1 ]||[ condição2 ]
```
**Exemplo**
```
#!/bin/bash
#Testar comparações compostas. Vamos verificaar se o unusário logado atualmente é o
#Fulado e se ele tem permissão de escrita no seu arquivo .bachrc:
if [ $USER = fULANO ] && [ -w $HOME/.bashrc ]
then
  echo "O Usuário $USER tem permissão para alterar o arquivo"
else
  echo "O usuário Fulano não pode alterar o arquicvo agora"
fi
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[16 - Comparando arquivos e diretórios com comando test](CompArqDirTest.md)|[18 - Comando case - teste de múltiplas condições](ComCaseTestMultiCond.md)|
