*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
CT001 - Acessar funcionalidade de Depositar
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Depósito
    E consegue visualizar todas as funcoes para depositar

CT002 - Voltar para tela inicial apos acessar funcionalidade de Depósito
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Depósito
    E consegue retornar para tela inicial deslizando tela para baixo