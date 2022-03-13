# 24 - Ler dados do teclado - Comando shift (deslocamento)

### O comando shift

O comando **shift** auxilia manipulação de parâmetros de linha de comando.   
O comando **shift** desloca os parâmetros em suas posições relativas  
Ai ser usado, o comando **shift** "rebaixa" cada parâmetro em uma posição, de modo que o valor da variável $3 é movido para $2, o valor de $2 é movido para $1 e o valor de $1 é descartado  

**Exemplo de uso do comando shift**
```
#!/bin/bash
# Teste de comando shift
i=1
while [ -n "$1" ]
do
  echo "O parâmetro $i tem o valor $1"
  i=$[ $i + 1 ]
  shift
done
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[23 - Ler dados do teclado - Parâmetros de Linha de Comando](LedadosTeclador.md)|[25 - Ler dados do teclado - Opções de linha de comando](LerDadosOpDeLinComando.md)|