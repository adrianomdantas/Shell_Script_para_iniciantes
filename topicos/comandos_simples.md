## Criando scripts simples 

É possivel encadear multiplos comandos em sequência no bash, bastando para isso separa-los com um ponto-e-virgula:  
```
cd /; ls -l
```
Essa sequência pode ser considerada como script do shwll ultra-simples.  
Claro que toda vez que for necessária a execussão desta sequência, devem-se digitar todos os comandos novamente.  
Para evitar este problema, criamos arquivos de script contendo os comandos que queremos executar.  

## Arquivo de Script 

Para criar um arquivo de script, use um editor de texto de sua preferência (vi, nano, emacs, notepad++) e crie um arquivo, por boa prática, sempre salvar os scripts com a extensão **.sh**   
A primeira tarefa é especificar qual shell será usado na primeira linha do arquivo:  
```
#!/bin/bash
```
O simbolo **#** representa uma linha de comentário, exceto na primeira linha do arquivo, onde a combinação **#!** indica o shell que rodará o script.  
Após especificar o Shell, podemos entrar com os comandos a serem executados, juntamente com os comentários necessários:  
```
#!/bin/bash
# Este é o meu primeiro script no bash
cd /
ls -l
```
O shell processará os comandos na ordem em que aparecem no arquivo  
Apos digitar os comandos desejados no arquivo de script, salve-o com o nome desejado  
É então necessário dar permissão  de execussão ao script, caso contrário, ele não rodará  
```
$ chmod a+x meuscript.sh
```
Opcionalmente, adicione também o script a algun diretório presente na variável PATH para executar o script de qualquer parte do computador, ou adicione o diretório que o contém a essa variável.  
Rode o script então chamando-o pelo nome:
```
$ ./meuscript.sh
```
Você também pode colocar uma informação usando o comando **echo**  
```
#!/bin/bash
# Este é o meu primeiro script no bash
cd /
ls -l
echo "listagem de programas do diretorio raiz"
echo -n "O usuário logado no momento é" #O "-n" foi usado para não pulara linha para o próximo comando 
whoami #Este comando mostra o usuario atual logado no sistema
```
|Topico Anterior|Próximo Topico|
|:---|---:|
|[Arquivos de Configuração profile, bashrc e outros](arqconfig.md) |[Usando variáveis nos scripts](variaveis_nos_scripts.md)|