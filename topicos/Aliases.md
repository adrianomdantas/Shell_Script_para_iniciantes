[![N|Solid](Imagens/Home.jpeg "Ir para Home")](/README.md/)

# 04 - Aliases e Funções no Bash

É possivel definir um alias para um comando ou sequência de caomandos usandos com frequência.
```
~$ alias mo='more'
~$ alias lshome='cd/home;ls'
```

também permite modificar o comportamento padrão de um comando.
```
~$ alias lsl='ls -l"
```

Para listar os alias criados, digite `alias` sem parâmetros.   
por padrão, os alias sao locais ao shell e não são repassados a outros programas.   
Para excluir um alias criado, use `unalias nome_alias`   

## Funções

O bash também permite trabalhar com funções, que são parecidas com alias - mas em vez de comandos, temos pequenos programas.   
Sintaxe:   
nome_função(){comando}   
#### Exemplo:   
```
~$ palavra() {
>cd / home/nanomd
>echo'Linha acrescentada´>>teste_func
>}
```

Para executar a função, basta digitar o nome da função
```
~$ palavra
```
  
Para verificar as funções existentes use o comando   
```
~$ typeset -f | less
``` 

### OBS 
Estes aliases e funções são apenas temporarias, ao reiniciar a sessão ou reiniciar a maquina, eles desaparecem, para ficarem permanentes, veremos no próximo item como usar arquivos de configuração no sistema  

|Topico Anterior|Próximo Topico|
|:---|---:|
|[03 - Arrays - Variáveis de Ambiente com múltiplos valores](Arrays.md)| [05 - Arquivos de Configuração profile, bashrc e outros](arqconfig.md)|
