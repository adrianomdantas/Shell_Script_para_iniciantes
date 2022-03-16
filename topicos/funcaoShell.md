# 28 - Criando Funções em Shell Scripting

Conforme a gente vai fazendo scripts cada vez mais complexos, acabamos repetinfdo trexos de codigo, para poder reutilizar estes codigos e não precisar ficar reescrevendo codigos, usamos as funções.  
Há duas formas de criar funções em shell script, a primeira forma é utilizando a palavra chave function como no exemplo abaixo.  
Sintaxe:
```
function nome_função {
  comandos da função
}  
```
A segunda forma de criar uma função, é sem a palava function, neste caso utilizamos conforme exemplo abaixo
sintaxe:  
```
nome_função() {
  comandos da função
}
```
Para usar uma função criada, basta especificar o nome da função numa linha, dentro de um script, as funções s]ao utilizadas dentro dos scripts como se fosse um comando comum.  
**Exemplo**
```
#!/bin/bash
# função em um script do shell

function mensagem {
  echo "testando a função"
}

#Chamando a função dez vezes usando um contador:
contador=1
while [ $contador -le 10 ]
do
  mensagem
  contador=$[ contador + 1 ]
done

#Outro texto indicando final do script:
echo "Função eexecutada com sucesso"
```
O shell bash, trata as funções como se fossem miniscripts, inclusive com status de saida, podemos por exemplo capturar a saida de uma função pra dntro de uma variável do shell
```
#!/bin/bash
# Function Output

Function quadrado {
  read -p "Digite um número entre 20 e 30: " numero
  echo $[ $numero * $numero ]
}

#atribuindo o valor da função à variável do shell valor:
valor=`quadrado`
# mostrando o valor:
echo "O quadrado do número é $valor"
```
|Topico Anterior|Próximo Topico|
|:---|---:|
|[27 -Criando caixas de diálogo TUI com whiptail no Linux](CxDeDialogoTUIcomwhiptail.md)|[29 - Criando caixas de diálogo TUI com dialog]()|