*** Settings ***

Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../pages/nubankClonePage.robot

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

CT004 - Navegar entre atalho
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar entre os atalhos de movimentação de moeda



Pegar posição bo botão
    Dado que o usuário está logado no aplicativo
    Wait Until Page Contains Element    xpath=//android.view.View[@content-desc="Descubra mais"]    10
    ${pix_button_location}=     Get Element Location    xpath=//android.view.View[@content-desc="Descubra mais"]
    Log    ${pix_button_location}    

