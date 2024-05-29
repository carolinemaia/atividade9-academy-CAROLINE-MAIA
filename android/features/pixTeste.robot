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

CT002 - Deve conseguir clicar na função de QrCode PIX
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de PIX
    Então consegue clicar no botão de QrCode

CT003 - Deve conseguir clicar na função de QrCode PIX
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de PIX
    Então consegue clicar no botão Enviar Pix

CT004 - Deve conseguir clicar na função de Ajuda PIX
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de PIX
    Então consegue clicar no botão Ajuda Pix

CT005 - Voltar para tela inicial apos acessar funcionalidade de PIX clicando no X
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de PIX
    Então consegue retornar para tela inicial clicando no x do pix

CT006 - Voltar para tela inicial apos acessar funcionalidade de PIX deslizando tela para baixo
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de PIX
    Então consegue retornar para tela inicial arrastando a tela para baixo