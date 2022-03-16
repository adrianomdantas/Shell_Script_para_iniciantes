[![N|Solid](Imagens/Home.jpeg "Ir para Home")](/README.md/)

# 16 - Comparando arquivos e diretórios com comando test

### Comparaçãoes de arquivos

As comparações de arquivos são o tipo de comparação mais poderosa e mais utilizadas em Shell Scripting.  

O comando test permite testar o status de arquivos e diret´rios no sistema de arquivos Linuxm conforme a tabela a seguir  

|Comparação|Descrição|
|:---|:---|
|-d arquivo |Verifica se o arquivo existe e se é um diretório|
|-e arquivo |Verifica se o arquivo existe |
|-f arquivo |Verifica se o arquivo existe e se é um arquivo|
|-r arquivo |Verifica se o arquivo existe e se possui permissão de leitura para o usuário atual|
|-s arquivo |Verifica se o arquivo existe e não está vazio|
|-w arquivo |Verifica se o arquivo existe e tem permissão de escrita|
|-x arquivo |Verifica se o arquivo existe e tem permissão de execução|
|-O arquivo |Verifica se o arquivo existe e é propriedade do usuário atual|
|-G arquivo |Verifica se o arquivo existe e seu grupo padrão é o mesmo do usuário atual|
|arqu1 -nr arq2 |verifica se  arq1 é mais novo que arq2|
|arq1 -ot arq2 |verifica se arq1 é mais antigo que arq2|

**Exemplo1**  
```
#!/bin/bash
#Verifica se o diretório HOME do usuário
#existe e mostra o conteudo
if [ -d $HOME ]
then
  echo "Seu diretório home existe e o conteudo é:"
  cd $HOME
  ls -l
else
  echo "Diretório não encontrado"
fi
```
**Exemplo2**
```
#!/bin/bash
#Verifica se um objeto é um arquivo
if [ -e $HOME ]
then
  echo "O objeto existe, Vamos ver se é arquivo ou diretório"
  if [ -f $HOME ]
  then
    echo "É um arquivo"
  else
    echo "É um diretório"
  fi
else
  echo "Objeto não encontrado"
fi
```
**Exemplo3**
```
#/bin/bash
#Verifica permissão de leitura em um arquivo
arquivo= /etc/passwd
#testar se o arquivo existe:
if [ -r $arquivo ]
then
  echo "existe; testar se usuario tem permissão de leitura"
  if [ -r $arquivo ]
  then
    tail -5 $arquivo
  else
    echo "Sem permissão de leitura"
  fi
else
  echo "Arquivo não encontrado"
fi
``` 
|Topico Anterior|Próximo Topico|
|:---|---:|
|[15 - Comparações numéricas e de strings com comando test](CompNumStrTest.md)|[17 - Testar condições compostas com AND e OR](TestCondCompAndOr.md)
