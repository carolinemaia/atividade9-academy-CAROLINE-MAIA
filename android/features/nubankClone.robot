*** Settings ***

Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../pages/telaInicialPage.robot
Resource    ../pages/pixPage.robot
Resource    ../pages/pagarPage.robot
Resource    ../pages/transferirPage.robot

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
    E clica no atalho de PIX
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

CT016 - Deve ser possivel considerar caracteres diferente de numero na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então nao deve considerar caractere diferente de numero no campo de inserir valor

CT017 - Nao deve ser possivel considerar numero maior que 14 digitos
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então nao deve considerar valor inserido apos 14 digitos
    










    

    
    








Pegar posição bo botão
    Dado que o usuário está logado no aplicativo
    Wait Until Page Contains Element    xpath=//android.view.View[@content-desc="Descubra mais"]    10
    ${pix_button_location}=     Get Element Location    xpath=//android.view.View[@content-desc="Descubra mais"]
    Log    ${pix_button_location}    

