[![N|Solid](Imagens/Home.jpeg "Ir para Home")](/README.md/)

# 23 - Ler dados do teclado - Parâmetros de Linha de Comando

**Manipulação de entradas de usuários**

Frequentemente, precisamos escrever scripts que interagem com o usuário.  
Há algumas formas de se obter dados dos usuários no shell, como parâmetros de linha de comando, opções de leitura de dados diretamente do teclado.  

**Parametros de linha de comando**

É o método para passar dados ao script do shell, Os parâmetros de linha de comando permitem adicionar calorres de dados á linha de comandos ao executar po script.  
Para passar parâmetros a um script, digite-os após o nome do scropt, ao executá-lo:  
`~$ ./scriptqualquer parâm1 parâm2 ... parâmN`
O shell bash atrinui variáveis especiais, denominados Parâmetros Posicionais, a todos os parâmetros digitados na linha de comando.  
Os parâmetros posicionados são números, sendo $0 o nome do programa, %1 o primeiro parâmetro, $2 o segundo parâmetro, e assim por diante até o nono, que é $9.  
Pra adicionar mais parâmetros, englopbe o n° do parâmetro entre parenteses: $(10) --> décimo parâmetro.  
**Exemplo de parâmetro
```
#/bin/bash
#Teste de parâmetros na linha de comandos **echo** "Programa que calcula o quadrado de um número" 
quadrado=$[ $1 * $1 ] 
echo "O quadrado de $1 é $quadrado"
```
Para executá-lo e calcular o quadrado de 9:  
./scriptquadrado 9  

### Variáveis de parâmetros especiais  

Há algumas variáveis especiais no shell bash.  
A variável especial $# contém o número de parâmetros de linha de comando fornecidos ao rodar o script. Podemos usá-la para verificar se o usuário digitou o n° de parâmetro necessários para rodas o programa corretamente.  
Exemplo: os cripr precisa de dois parâmetros, então vai ter o número 2 lá dentro ou também é possivel um numero identerminado de parametros.  
**Exemplo de variável $#**  
```
#!/bin/bash
#Verificação de número de parâmetros
if [ $# -ne 1 ]
then
  echo "Digite apenas um valor!"
else
  result=$[ $1 # 3 ]
  echo "O triplo de $1 é $result"
fi
```


|Topico Anterior|Próximo Topico|
|:---|---:|
|[22 -  Laço for no estilo Linguagem C](LacoForEstiloC.md)|[24 - Ler dados do teclado - Comando shift (deslocamento)](CoandoShift.md)]()|
