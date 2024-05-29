*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
C001 - Rolar tela do aplicativo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar até o final da tela
    E retornar para o inicio da tela

CT002 - Visualizar informações pessoais de Nome
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue visualizar seu Nome
    E icone de perfil

CT004 - Visualizar opções de ocultar/mostrar valores da tela inicial de saldo
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue ocultar todo valor de Saldo

CT005 - Visualizar opção de ajuda na tela inicial
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue visualizar opção de Ajuda

CTO06 - Visualizar opção de Indicar Amigos no topo da tela
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue acessar funcionalidade pelo icone no topo da tela
    E deve conseguir visualizar mais informações sobre indicar amigos

CT007 - Visualizar saldo bancário
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar saldo atual da Conta

CT008 - Navegar entre atalho de movimentação de dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar entre os atalhos de movimentação de moeda

CT009 - Visualizar atalho de Meus Cartões
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Meus Cartões
    E consegue clicar no atalho Meus Cartões

CT010 - Visualizar atalho de aviso de empréstimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar no atalho o valor disponivel para empréstimo

CT011 - Visualizar atalho para guardar dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Guardar Dinheiro
    E consegue clicar no atalho Guardar Dinheiro

CT012 - Visualizar funcionalidade de Seguro de Vida
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então deve ser possível visualizar a funcionalidade de Seguro de Vida   

