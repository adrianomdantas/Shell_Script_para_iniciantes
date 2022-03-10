# 08 - Redirecionar comandos para variáveis com a crase

## Redirecionar saída de comandos a cariáveis

### Usando crases (backtick`)
As crases permitem atribuir a saída de um comando do shell a uma variável  
O comando todo deve estar entre crases:  
```
dia=`date`
echo "A data é $dia"
```
Exemplo:  
```
~$ dia=`date`
~$ echo "A data é $dia"
A data é Qui set 5 14:57:01 BRT 2013
~$
```

### Criando um script usando a crase
```
~$ vi testecrase.sh
#!/bin/bash
#copiar a listagem de um diretorio para arquivos unicos de acordo com data e hora
arq= `date +%d%m%y%H%M`
ls -la /home/fulano >> log.$arq
:wq
```

Foi configurado a data usando:  
**%d** para dia  
**%m** para mes  
**%y** para ano  
**%H** para hora  
**%M** para minuto  

Foi usado **>>** para não sobrescrever quando o arquivo for salvo
Foi usado **log.$arq** para cada vez que for salvo o arquivo e for em minuto direfente, criar um novo arquivo com a data e hora atual

|Topico Anterior|Próximo Topico|
|:---|---:|
|[07 - Usando variáveis nos scripts](variaveis_nos_scripts.md)|[09 - Redirecionamento de entrada e saída de dados](redirecionamento_entrada.md)|
