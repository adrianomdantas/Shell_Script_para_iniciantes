[![N|Solid](Imagens/Home.jpeg "Ir para Home")](/README.md/)

# 19 - Estrutura de Repetição for (loop)

O shell Bash oderece três estruturas de repetição para criação de loops estruturados.  
São elas os comandos:  
- for
- while
- until  

### Comando for  
O comando for permite criar looop que itera através de uma série de valores.  
Cada iteração executa um conjunto definido de comandos usando um dos valores da lista.  
Sintaxe baseica:  
```
for valor in lista
do
  comandos
done
```
A cada iteração, a variavel valor contém o valor atual da lista
**Exemplo 1**
```
#!/bin/bash
#Ler valores de uma lista, declarada no próprio comando  

for valor in pastel pizza esfiha 'pão de queijo'
do
  echo Adoro $valor
done
```
**valor** é uma variavel

### Saparador de campos: IFS
Caso os itens iterados sejam compostos por palavras separadas por espaços (como Ana Paula), o comando for irá considerar cada palavra um item separado.  

Isso é devido á variável de ambiente IFS(internal Field Separator), a qual define uma lista de caracteres que o shell bash usa como separadores de campos.  

São eles, por padrão: espaço, tabulação e newline.  
É possivel alterar essa lista de separadores.  

**Exemplo 2**
```
#!/bin/bash
# Arquivo arq1 contém uma lista de nomes, um por linha, incluindo nomes compostos.
arquivo=/home/nanomd/arq1
IFSOLD=$IFS #criando uma variavel IFSOLD e atribuir o valor IFS a ela
IFS=$'\n' #alterando a variável IFS

for nome in `cat $arquivo`
do
  echo "O nome é: $nome"
done
IFS=$IFSOLD #voltar a variavel IFS original
```
**Exemplo 3**
```
#!/bin/bash
#iterando por todos os itens de um diretório

for item in /home/nanomd/*
do
  if [ -d "$item" ]
  then
    echo "O item $item é um diretório"
  elif [ -f "$item" ]
  then
  echo "O item $item é um arquivo"
  fi
done
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[18 - Comando case - teste de múltiplas condições](ComCaseTestMultiCond.md)|[20 - Estrutura de Repetição While (loop)](RepeticaoWhile.md)|
