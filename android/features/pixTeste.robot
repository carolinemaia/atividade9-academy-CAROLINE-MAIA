*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
CT001 - Acessar funcionalidade de PIX 
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de PIX
    E consegue visualizar todas as funcoes do PIX

CT002 - Voltar para tela inicial apos acessar funcionalidade de PIX clicando no X
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de PIX
    Então consegue retornar para tela inicial clicando no x do pix

CT003 - Voltar para tela inicial apos acessar funcionalidade de PIX deslizando tela para baixo
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de PIX
    Então consegue retornar para tela inicial arrastando a tela para baixo