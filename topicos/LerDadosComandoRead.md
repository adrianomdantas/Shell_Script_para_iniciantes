26 - Comando read - Ler dados do teclado e de arquivos

### Comando read

O comando read aceita entrada de dados da entrada padrão ou de outro descritor de arquivos   
Após receber a entrada, o comando read coloca os dados em uma variável padrão.  
**Exemplo**
```
#!/bin/bash
#teste de comando read
printf "Digite seu nome: "
read nome
echo Seu nome é $nome
```

Se não for especificada nenhuma variável para receber os dados no comando read, então o valor lido será colocado na variável de ambiente **REPLY**
```
#!/bin.bash
# teste de read de variável de ambiente REPLY
read -p "Digite sua idade: "
echo Você tem #REPLY anos de idade!
```

### Comando read com timer

É possível especificar um valor de timeout para o comando read.  
Para isso, isamos a opção -t para passar o n° de segundos que o comando aguardará uma entrada do usuário. Quando o timer expira, o read retorna status de saida não-zero   
```
#!/bin/bash
# usando timer
echo Digite seu nome: 
if read -t 4 nome
then
  echo Olá $nome, rudo bem por ai?
else
  echo Você demorou mais de 4 segundos para responder!
```
### Limitando n° de caracteres digitados

É possiveltambém fazer com que o comando read conte o n° de caracteres de entrada, e saia imediatamente quando um numero predefinido for digitado, atribuindo os dados recolhidos a uma variável.   
```
#!/bin/bash
# Lendo um caractere (-n1 significa um caractere lido, se fosse -n2 seriam 2 caracteres)
echo Deseja prosseguir com a operação[s/n]?
read -n1 resposta
case -n1 resposta in
  S|s) echo
    echo Você escolheu continuar;;
  N|n) echo
    echo Operação interrompida;;
  *) echo
    echo Operação invalida. Digite apenas s ou n;;
esac
```
### Leitura silencioda de dados
É possível ler o que o usuário digita, sem que no entanto apareçam os caracteres no monitor. Esse recurso é útil, por ex., para capturarmos senhas, Para isso, usa a opção -s;
```
#!/bin/bash
# Entrada oculta:
echo Digite sua senha:
read -s senha
echo
echo A senha digitada foi $senha
```
### Ler dados de um arquivo
Podemos usar o comando **read** para ler dados armazenados em um arquivo no computador. Cada chamada ao comando **read** lê uma linha de texto. Quando não houverem mais linhas para ler, o comando **read** sairá com status de saída zero.  
Vamos criar um arquivo de texto chamado "teste_read.txt" e testar o recurso com o código a seguir:
```
#!/bin/bash
#Ler dados de um arquivo de texto:
contador=1 # o contador é apenas para contagem das linhas lidas
#o comando cat vai abrir o arquivo e o "|" vai direcionar para o loop while
cat teste_read.txt | while read linha
do
  echo Linha $contador : $linha # vai exibir a palavra "Linha" e o numero da linha lida : conteudo da variavel linha
  contador=$[ $contados + 1 ] # vai atualizar o contador com +1
done
```


|Topico Anterior|Próximo Topico|
|:---|---:|