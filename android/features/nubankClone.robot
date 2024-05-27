*** Settings ***

Resource    ../../base.robot
Resource    ../pages/telaInicialPage.robot
Resource    ../pages/pixPage.robot
Resource    ../pages/pagarPage.robot
Resource    ../pages/transferirPage.robot
Resource    ../pages/depositoPage.robot
Resource    ../pages/emprestimoPage.robot
Resource    ../pages/recargaPage.robot


#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
C001 - Rolar tela do aplicativo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar até o final da tela

CT002 - Visualizar informações pessoais de Nome
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue visualizar seu Nome

CT003 - Visualizar saldo bancário
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar saldo atual da Conta

CT004 - Navegar entre atalho de movimentação de dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar entre os atalhos de movimentação de moeda

CT005 - Visualizar atalho de Meus Cartões
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Meus Cartões
    E consegue clicar no atalho Meus Cartões

CT006 - Visualiza disponibilidade de Emprestimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então o usuário consegue visualizar a opcao de Emprestimo

#verificar se faco caso de teste pra visualizar o valor do emprestimo
CT007 - Acessa funcionalidade de Emprestimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então acessa a funcionalidade de Emprestimo
    E visualiza opcao de solicitar novo emprestimo

CT008 - Visualizar atalho para guardar dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Guardar Dinheiro
    E consegue clicar no atalho Guardar Dinheiro

CT009 - Acessar funcionalidade de PIX 
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de PIX
    E consegue visualizar todas as funcoes do PIX

CT010 - Voltar para tela inicial apos acessar funcionalidade de PIX clicando no X
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de PIX
    Então consegue retornar para tela inicial clicando no x do pix

#CT011 - Voltar para tela inicial apos acessar funcionalidade de PIX arrastando a tela
    #Dado que o usuário está logado no aplicativo
    #E esta na tela de funcionalidade de PIX
    #Então consegue retornar para tela inicial arrastando a tela para baixo

CT012 - Acessar funcionalidade de pagar boleto
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E acessar a funcionalidade de Pagar
    Então visualizar todas as opcoes de Pagamento

CT013 - Voltar para tela inicial apos acessar funcionalidade de PAGAR clicando no X
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de Pagar
    Então consegue retornar para tela inicial clicando no x de pagar

CT014 - Acessar funcionalidade de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Transferencia
    E o campo para inserir o valor deve estar zerado

CT015 - Deve ser possivel digitar um valor na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então consegue inserir um valor numerico no campo de inserir valor

CT016 - Nao deve ser possivel considerar caracteres diferente de numero na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então nao deve considerar caractere diferente de numero no campo de inserir valor

CT017 - Nao deve ser possivel considerar numero maior que 14 digitos
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então nao deve considerar valor inserido apos 14 digitos

CT18 - Deve ser possivel clicar no icone de QRCode na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então consegue clicar no icone de Qrcode

CT019 - Voltar para tela inicial apos acessar funcionalidade de TRANSFERENCIA clicando no X
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então consegue retornar para tela inicial clicando no x de transferencia

CT020 - Acessar funcionalidade de Depositar
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Depósito
    E consegue visualizar todas as funcoes para depositar

CT021 - Voltar para tela inicial apos acessar funcionalidade de DEPÓSITO clicando no X
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Depósito
    Então consegue retornar para tela inicial clicando no x de depósito

CT022 - Acessar funcionalidade de Emprestimo pelo icone
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Emprestimo
    E visualiza opcao de solicitar novo emprestimo

CT023 - Visualiza emprestimos ativos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Emprestimo
    Entao visualiza informacao se ha emprestimo ativo

CT024 - Acessar funcionalidade de Recarga de Celular
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Recarga de Celular
    E visualiza o campo para inserir o numero de telefone

CT025 - Deve ser possivel inserir numero de celular com 11 digitos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então consegue inserir numero de telefone com 11 digitos

CT026 - Nao deve ser possivel considerar caracteres diferente de numero na tela de Recarga de Celular
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então nao deve considerar caractere diferente de numero no campo de inserir telefone

CT027 - Nao deve ser possivel considerar numero de telefone maior que 11 digitos na tela de Recarga de Celular
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então nao deve considerar valor inserido apos inserir telefone com 11 digitos

CT028 - Voltar para tela inicial apos acessar funcionalidade de RECARGA clicando no X
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então consegue retornar para tel inicial clicando no x de recarga

CT029 - Acessar a funcionalidade de Cobrar
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao acessa a funcionalidade de Cobrar
    E o campo para inserir o valor de cobranca deve estar zerado

CT030 - Deve ter opcao de nao especificar valor de cobranca
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Cobrar
    Entao tem opcao de nao especificar o valor de cobranca

CT031 - Voltar para tela inicial apos acessar funcionalidade de COBRAR
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Cobrar
    Então consegue retornar para tela inicial clicando no x de cobranca

C032 - Acessar a funcionalidade de Doacao
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao acessa a funcionalidade de Doacao
    E o campo para inserir o valor de doacao deve estar zerado

C033 - Deve ser possivel inserir valor para Doacao
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Doacao
    Entao deve ser possivel inserir valor para doacao

C034 - Nao deve considerar numero apos informar valor de 14 digitos
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Doacao
    E inserir valor maior que 14 digitos
    Entao nao deve considerar valor inserido apos 14 digitos 

C035 - Voltar para tela inicial apos acessar funcionalidade de DOACAO
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Doacao
    Então consegue retornar para tela inicial clicando no x de doacao

C036 - Acessar funcionalidade Indicar Amigos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao acessa a funcionalidade de Indicar Amigos
    E consegue visualizar todas as informacoes de indicacao para amigo

C037 - Voltar para tela inicial apos acessar funcionalidade de INDICAR AMIGOS
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Doacao
    Então consegue retornar para tela inicial clicando no x de indicacao
    

    
    




    

