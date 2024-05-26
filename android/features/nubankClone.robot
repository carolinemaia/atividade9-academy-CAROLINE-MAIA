*** Settings ***

Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../pages/nubankClonePage.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
CT001 - Visualizar informações pessoais de Nome
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue visualizar seu Nome

CT002 - Visualizar saldo bancário
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar saldo atual da Conta

CT003 - Navegar entre atalho
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar entre os atalhos de movimentação de moeda

Pegar posição bo botão
    Dado que o usuário está logado no aplicativo
    Wait Until Page Contains Element    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]    10
    ${pix_button_location}=     Get Element Location    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
    Log    ${pix_button_location}    

