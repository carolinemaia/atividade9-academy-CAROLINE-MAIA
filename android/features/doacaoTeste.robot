*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***

CT001 - Acessar a funcionalidade de Doacao
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao consegue clicar na funcionalidade de Doacao