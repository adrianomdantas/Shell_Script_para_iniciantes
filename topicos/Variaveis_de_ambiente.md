## Variaveis de ambiente


Varios programas precisam de informações sobre o usuario e suas preferências para poderem rodar. Para evitar que voce tenha que passar esses dados a cada comando que executa (ec.: caminhos de diretórios de bibliotecas), o shell cria um ambiente operacional composto de inumeras variaveis.  
Essas variáveis contém valores que são usados pelos programas e por outros shells.  
- Variáveis de ambientes globais
- Variáveis do Shell (locais)  

São como "variáveis globais", pois podem ser passadas a todos os subprocessos do shell, incluindo outros shells.  
Exemplos:  
- PATH - lista de diretórios de programas executaveis  
- USERNAME - Nome do usuário logado
- TERM - Tipo de terminal ou janella de terminalem uso  
- HOME - Diretório home do usuario atual  
- UID - UID do usuario atual  
- RANDOM - Gera um numero aleatório  
- LANG - Idioma, especificado como locale  

Os comandos `env` e `printenv` mostram as variáveis de ambiente no terminal  
Para criar uma variável globalm crie uma local e depois exporte-a com o comando `export`.  
Por padrão as variaveis de ambiente internas do Linux, são criadas com letras maiúsculas, quando você cria suas variáveis personalizadas, é imteressante criar com letras minusculas para diferenciar das variaveis padrão do sistema e ficar um pouco mais organizado  

## Variáveis do Shell

São "variáveis locias", pois são específicas do shell atual, outros programas e shells não as herdam.  
Ex.:
- SECONDS -n° de segundos desde que o shell foi iniciado  
- SHELL - indica qual shell está em uso no momento  

Podemos criar uma variável nova digitando digitando um par NOME=valor no terminal  
```
teste=valor
```
E verificamos o seu valor com o comando echo, o "$" é necessário para ver o conteudo da variavel:
```
echo $teste
```
Podemos disponibilizar a variável criada para outros shells ou programas com o comando `$expor`:
```
export teste
```
E podemos remover uma variável de ambiente com o comando `$unset`

```
unset teste
```

Exemplos:  

`teste='teste'` #Cria uma variavel local e atribui valor, não pode ter espaço entre o = e o conteudo da variavel    
`echo $teste` #Mostra o conteudo da variavel criada  
`bash` #cria um novo processo bash filho  
`ps` #mostra os dois processos  
`exit` #volta para o processo pai  
`ps` #mostra o processo unico rodando agora  
`export teste` #exporta a variavel "teste"  
