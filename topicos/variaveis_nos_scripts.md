[![N|Solid](Imagens/Home.jpeg "Ir para Home")](/README.md/)

# 07 - Usando variáveis nos scripts  

## Usando variaveis de ambiente
Criando o script   
`~$ vi testevar.sh`
```
#!/bin/bash
# informações sobre o usuário
echo "Nome do usuário: $USER"
echo "Diretório home: $HOME"
echo "UID de usuário: $UID"
```
Usando o script
```
~$ ./testevar.sh
nome do usuário: nanomd
Diretório home: /home/nanomd
UID de usuário: 1000
~$
```
## Usando Variaveis de Usuário

Você pode criar suas próprias variáveis dentro de um script.   
Variáveis de usuário podem conter até 20 caracteres no nome, e são case-sensitive (letras maiusculas e minusculas são letras diferentes para o script).  
O Shell determina automaticamente o tipo das variáveis criadas.  
As variaveis criadas pelo usuário são desalocadas quando termina a execussão do script
```
#!/bin/bash
#teste de variaveis
idade=25
nome="Fulano"
echo "O $nome tem $idade anos de idade"
```
**OBS**  
Não esquecer de usar o `chmod`para mudar a permissão do script 

|Topico Anterior|Próximo Topico|
|:---|---:|
|[06 - Criando scripts simples](comandos_simples.md)|[08 - Redirecionar comandos para variáveis com a crase](Redirecionar_comandos.md)|
