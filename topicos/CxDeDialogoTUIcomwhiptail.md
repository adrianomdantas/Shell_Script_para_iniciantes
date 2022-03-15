# 27 - Criando caixas de diálogo TUI com whiptail no Linux

### caixas de dialogo com whiptail

Whiptail no spermite exibir varios tipos de caixas de diálogo a partis de um script, ele utiliza uma biblioteca de programação chamada newty escrita em linguagem C.   
Criando uma caixa de dialogo Messagebox:  
```
#!/bin/bash
whiptail --title "caixa de mensagem" --msgbox "Criando uma caixa de mensagem usando o whiptail. Escolha ok para continuar." --fb 10 50
```
Todo comando está e, uma única linha de texto
--title - cria um titulo  
--msgbob - tipo da caixa  
--fb - sombreado na caixa  
10 50 - numero de linhas e colunas que vai ocupar na tela  
![](imagem/messagebox.png "caixa de mensagem")  

Outro tipo de caixa é o tipo "yes no"
```
#!/bin/bash
if whiptail --title "Testando a caixa Yes/No" --yesno "Escolha entre as alternativas yes e no." --fb 10 50
then
  echo "Você escolheu Yes. O status de saida é $?"
else
  echo "Você escolheu no.  status de saída é $?"
fi
```
![](imagem/yesnobox.png "botão yes no")
Neste caso, o whiptail retorna um status de saida na execução na variável especial **$?**, se o botão **yes** for escolhido, ele retorna o status de saida "0", e **se** o no for escolhido, ele retorna o status de saida "1".  

Há a possibilidade de personalizar os botões yes e no.
```
#!/bin/bash
if whiptail --title "Escolhendo tipo de instalação" --yes-button "completa" --no-button "Personalizdo" --yesno "Escolha o tipo de instalação desejada:" --fb 10 50
then
  echo "Você escolheu yes. O Status de saida é $?."
else
  echo "Você escolheu no. O status de saida é $?."
fi 
```
![](imagem/yesnobotaopersonalizado.png "yas no personalizado")

Infobox é a caixa mais simples
```
whiptail --title "Caixa infobox" --infobox "Esta é apenas uma caixa de informações, pressione ok para continuar." 10 80
```

Outro exemplo de caixa é a imputbox, a inputbox aguarda o usuário inserir alguma informação
![](imagem/inputbox.png)
```
#!/bin/bash
nome=$(whiptail --title "Entrada de nome de usuário" --inputbox "Digite o seu nome: " --fb 10 60 3>&1 1>&2 2>&3)
statussaida=$?
if [ statussaida = 0 ]: then
  echo "O nome digitadofoi: #nome"
else
  echo "Etrada cancelada pelo usuário"
fi
```
3>&1 1>&2 2>&3 - São descritores de arquivos, que basicamente descrevem arquivos abertos e pra onde vão os dados que são gerados dentro do script, estão redirecionando o erro padrão para a saida padrão, e a saida padrão é o próprio console aonde o usuário vai ver a informação, o whiptail por default, direcionao a saida dos dados para o erro padrão, por isso é necessário usar este "truque" para ver a saida no console.  
 
![](messageboxsimples.png)

Checklist- é uma lista de item no qual você pode selecionar quantos você quiser

```
#!/bin/bash
cidade=$(whiptail --title "Listagem de Cidades" --checklist --fb \ 
"Quais cidades deseja visitar?" 15 50 5 # este 5 é o numero de itens a ser exibido na checklist \ 
"Londres" "Inglaterra" ON \
"Berlin" "Alemanha" OFF \
"Toronto" "Canadá" OFF\
"Abu Dhabi" "Emirados Arabes" OFF \
"Pequim" "China" OFF 3>&1 1>&2 2>&3)
status=$?
if [ $status = 0 ]
then
  echo "As cidades escolhidas foram" $cidade
else
  echo "Entrada cancelda pelo usuário."

fi
```
![](imagens/checklist.png)
Mais tipos de caixas no link http://www.bosontreinamentos.com.br/shell-script/shell-scripting-criando-caixas-de-dialogo-tui-com-whiptail-no-linux-27/  
 



|Topico Anterior|Próximo Topico|
|:---|---:|
|[26 - Comando read - Ler dados do teclado e de arquivos](LerDadosComandoRead.md)|[28 - ]()|