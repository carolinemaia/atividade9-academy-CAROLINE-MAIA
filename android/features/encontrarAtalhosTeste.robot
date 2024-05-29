*** Settings ***

Resource    ../../base.robot

Test Teardown     Teardown

*** Test Cases ***
C001 - Acessar funcionalidade Encontrar Atalhos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao clica na funcionalidade de Encontrar Atalhos