[![N|Solid](Imagens/Home.jpeg "Ir para Home")](/README.md/)

# 12 - Status de Saída dos comandos e o comando exit

Cada comando que roda no shell usa um valor de status de saída para indicar ao shell que o processamento terminou.  
O status de saída é um nomero inteiro entre 0 e 255.  

A variável especial**$?** armazea o valor do status de saída do último comando executado.  

O status de saída de um comando executado som sucesso é 0(zero); se houver algum erro, será um inteiro positivo.

### Status de saida: Alguns significados

|Código|Signficado|
|:---|:---|
|0|Comando completado com sicesso|
|1|Erro geral desconhecido|
|126|O comando não pode ser executado (permissões)|
|127|Comando não encontrado|
|130|Comando finalizado com Crlt + C|

Para ver o código destatus de um comando, digite `scho $?`logo apos o termino de sua execução

### Exemplo de utilização  
```
~$ ls
Área de Trabalho   Documentos   Downloads   Videos
~$ echo $?
0
~$
```
0(zero) significa que o ultimo comando foiu executado com sucesso  
```
~$ lxy
Comando 'lxy' não encontrado, você quis dizer:
 Comando 'lxy" do pacote 'lxy" (universe)
lxy: comando não encontrado
~$ scho $?
127
~$
```
127 é comando não encontrado, houve um erro no ultimo na execução do ultimo comando.  

### Comando Exit
Por padrão, seu shell script finaliza com o status de saída do último comando executado no script.  

É possivel alterar esse comportamento para retornar seu próprioo código de status.  

O comando **exit** permite especificar um status de saída quando o scrpt finaliza

### Comando exit - exemplo

```
~$ vi testeexit.sh 
#!//bin/bash
var1=10
var2=2
var3=$[$ var1 * $var2]
echo $var3
exit 6 #Retorna o código de saída 6
:wq
~$ ./testeexit.sh
20
~$ echo $?
6
```
O status de saida do script retornaria o valor 0 (**echo $?**), mas como foi alterado o valor da saida usando o comando **exit**, o valor foi 6.  

Você também pode usar variáveis como parâmetro de comando exit:
```
exit $var3
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[11 - Usando a calculadora bc em scripts](Calculos.md)|[13 - Estrutura de decisão condicional if then else](EstrutDecisCondicIfThenElse.md)|
