## Arquivos de Configuração

Variáveis de ambiente, funções e aliases podem ser configurados automaticamente pelo bash com o uso de alguns arquivos de configuração, de modo a definir o ambiente operacioanl ao iniciar o sistema   
Cara arquivo de configuração tem um escopo e momento de uso definidos, e o arquivo usaado depende do método usado para iniciar o bash. Há três formas de se iniciar o bash
- Como shell de login padrão na inicializaçao;   
- Como um shell interativo que não é o shell de login;   
- Como um shell não-interativo para rodar um script.  

### Alguns arquivos de configuração para trabalhar com shell

|Arquivo |Uso|  
|:---|:---|
|/etc/profile |Arquivo de inicialização, executado durante o login e valido para todo o sistema; cotném variáveis de ambiente e programas de inicialização|
|/etc/bash ou /etc/bash.bashrc|Arquivo de inicialização, válido para todo o sistema executado pelo .bashrc do usuário para cada shell bash iniciado. Contém funções e Alias|
|~/.bash_profile |Se existir, será executado após /etc/profile durante o login|
|~/.bash loginn |Se o .bash_profile não existir, será executado automaticamente durante o login|
|~/.profile |Se nenhum dos dois anteriores existirem, será executado automaticamente no login|
|~/.bashrc |Executado automaticamente quando o bash é iniciado interativamente|
|~/.inputrc |Contém variaveis e configurações de modo de operação do bash em relação ás teclas (vinculação)|
|~.bash_logout |Executado automaticamente no logout|

### Shell de login

Quando nos logamos no sistema Lunix, o shell bash é iniciado em um shell de login.  
Esse shell procura por quatro arquivos de inicialização para processar seus arquivos, na seguinte ordem:  
```
/etc/profile
~/.bash_profile
~/.bash_login
~/.profile
```
## Shell Interativo

Quando o bash é iniciado como um shell interativo, ele não processa o aqrquivo **/etc/profile**; em vez disso, ele tenta executar o arquivo **.bashrc** no diretório do usuário atual.  
O arquivo **.bashrc** pode ser usado para que o usuário insira aliaases personalizados e funções de scripts pessoais.  


## Shell não Interativo

É o shell iniciado para executar um script (shell script.  
Quando um shell é iniciado em modo não interativo, ele verifica a variavel de ambiente **BASH_ENV** para descobrir se há comandos de inicialização a executar.  
Por padrão, o valor desta variável não é configurado  

## Resumo - Arquivos de configuração


Quando você se loga no sistema linux, o shell bash acessa o arquivo de inicialização **/etc/profile**, e também os arquivos de inicialização locais do seu usuário, presentes no diretório home:  
**~/.bash_login**, **~/.profile** e **~/.bash_profile**  

Esses arquivos locais são todos opcionais e podem ser personalizados pelo usuário para incluir variáveis de ambiente e scripts de inicialização  

|Anterior|Próxilo|
|:---|---:|
|[Aliases e Funções no Bash](Aliases.md) |[]()|

