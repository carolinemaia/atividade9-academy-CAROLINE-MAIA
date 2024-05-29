*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
CT001 - Acessar funcionalidade de Emprestimo pelo icone
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Emprestimo

C002 - Acessar funcionalidade Emprestimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário acessa a funcionalidade de Emprestimo
    Então visualiza todas informações sobre valor de Emprestimo
    E visualiza opcao de solicitar novo emprestimo

CT003 - Visualizar opção de emprestimo ativo
    Dado que o usuário está logado no aplicativo
    Quando o usuário acessa a funcionalidade de Emprestimo
    Entao visualiza informacao se ha emprestimo ativo

CT004 - Visualizar opcao de ajuda na tela de emprestimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário acessa a funcionalidade de Emprestimo
    Então visualiza icone de ajuda
