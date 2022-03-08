# Redirecionamento de entrada e saída de dados

### Redirecionamento de saida  
O mais comum é enviar a saída de um comando para um arquivo. Para isso, use o simbolo: **>**
comando > arquivo_saída
```
ls > arq.txt
```
Caso queira acrescentar a saída e um comando a um arquivo em vez de sobrescreve-lo, use o símbolo duplo: **>>**  
comando >> arquivo_saída
```
date >> arq.txt
```
### Redirecionamento de Entradas  
Em vez de redirecionar a saída de um comando para um arquivo, é possível tomar o conteúdo de um arquivo e rdireciona-lo para um comando.  
Para isso use o símbolo: **<**  
comando < arquivo_entrada  
```
wc < arq.txt
```
O comando **wc** produz a contagem de texto do arquivo. Por padrão mostra três valores:  
- N° de linhas;  
- N° de palavras;  
- N° de bytes

**exemplo:**  
```
~$ wc < arq.txt
24 31 305
~$
```
24 linhas  
31 palavras  
305 bytes  
O comando foi executado com o conteudo do arquivo como parâmetro 

### Redirecionamento de entrada inline  

Com este método é possível especificar os dados para redirecionamento na linha de comando em vez de um arquivo.  
O símbolo de redirecionamento de entrada inline é o **<<**; Você também deve especificar um marcador de texto que delineie o inicio e o fim dos dados usados para entrada:  
```
~$ wc << EOF
>linha de texto 1
>linha de texto 2
>EOF
2 8 26
~$
```
EOF - Marcador(não precisa ser EOF, pode ser qualquer palavra)
> - prompt secundário(PS2)  

|Topico Anterior|Próximo Topico|
|:---|---:|
|[Redirecionar comandos para variáveis com a crase](topicos/Redirecionar_comandos.md)|[Cálculos aritméticos simples no bash]()|