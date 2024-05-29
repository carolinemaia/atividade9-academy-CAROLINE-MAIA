*** Settings ***

Resource    ../../base.robot

Test Teardown     Teardown

*** Test Cases ***
CT001 - Deve ser possivel acessar informações sobre transações no WhatsApp na seção de Descubra Mais
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então visualiza opção de conhecer funções no WhatsApp
    E conhecer mais clicando em Quero conhecer

CT002 - Deve ser possivel acessar função de indicar amigos na seção de Descubra Mais
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então deve ser possivel acessar a funcionalidade de indicar amigos
    E deve conseguir visualizar mais informações sobre indicar amigos