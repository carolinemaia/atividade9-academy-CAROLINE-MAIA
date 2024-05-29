*** Settings ***

Resource    ../../base.robot
Test Teardown     Teardown

*** Test Cases ***
C001 - Deslizar tela do aplicativo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar até o final da tela
    E retornar para o inicio da tela

CT002 - Visualizar informações pessoais de Nome
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue visualizar seu Nome
    E icone de perfil

CT003 - Visualizar opções de ocultar/mostrar valores da tela inicial
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue ocultar todos os valores da tela inicial

CT004 - Visualizar opção de ajuda na tela inicial
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue visualizar opção de Ajuda

CT005 - Visualizar opção de Indicar Amigos no topo da tela
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue acessar funcionalidade pelo icone no topo da tela
    E deve conseguir visualizar mais informações sobre indicar amigos

CT006 - Visualizar saldo bancário
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar saldo atual da Conta

CT007 - Navegar entre atalho de movimentação de dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar entre os atalhos de movimentação de moeda

CT008 - Visualizar atalho de Meus Cartões
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Meus Cartões
    E consegue clicar no atalho Meus Cartões

CT009 - Visualizar atalho de aviso de empréstimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar no atalho o valor disponivel para empréstimo

CT010 - Visualizar atalho para guardar dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Guardar Dinheiro
    E consegue clicar no atalho Guardar Dinheiro

CT011 - Visualizar funcionalidade de Seguro de Vida
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então deve ser possível visualizar a funcionalidade de Seguro de Vida   

