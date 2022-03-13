# 25 - Ler dados do teclado - Opções de linha de comando

### Trabalhando com opções

Opções são letras precedidas por um hífen que alteram o comportamento de um comando  
Para processar opções passadas ao script, vamos usar uma combinação dos comandos **cass** e **shift**.  
Exemplo a seguir.
```
#!bin/bash
#Usando opções em um script
while [ -n "$1" ]
do
  case "S1" in
    -a) echo "Opção selecionada: A";;
    -b) echo "Opção selecionada: B";;
    -c) echo "Opção selecionada: C";;
    -*) echo "Opção incorreta";;
  esac
  shift
done
```

|Topico Anterior|Próximo Topico|
|:---|---:|
|[24 - Ler dados do teclado - Comando shift (deslocamento)](CoandoShift.md)||