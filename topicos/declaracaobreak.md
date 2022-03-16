# 30 - Declaração break - encerrando loops prematuramente

O uso da instrução break, serve para interromper um laço/loop antes do final previsto.
Exemplo: você programou um laço for para executar uma determinada tarefa, um certo numero de vezes, mas uma determinada condição ocorrer no meio do processamento, você quer que o laço seja encerrado antes do final previsto.  

**Exemplo1**

```
#!/bin/bash
#testando comando break em shell scripting
for numm in 1 2 3 4 5 6 7 8 9 10
do 
  if [ $num -eq 6 ]
  then
    break
  fi
  echo "numero: $num"
done
echo "Laço for finalizado
```
```
~$ ./break.sh
Numero: 1
Numero: 2
Numero: 3
Numero: 4
Numero: 5
Laço for finalizado
```
**Exemplo2**
```
#!/bin/bash
# Testando comando break em um laço while
# read -p para ler o dado do usuário que será armazenado na variável num
read -p "Digite um número entre 1 e 10 " num

while [ $num -ne 0 ]
do
  if [ $num -gt 10 ]
  then
    break
  fi
  echo "Número digitado: $num"
  read -p "Digite um número entre 1 e 10: "
done

if [ $num -eq 0 ]
then
  echo "Você encerrou o programa digitando zero"
else
  echo "Você digitou um valor maior do que 10. Programa finalizado"
fi
```

|Topico Anterior|
|:---|
|[29 - Criando caixas de diálogo TUI com dialog](dialog.md)|