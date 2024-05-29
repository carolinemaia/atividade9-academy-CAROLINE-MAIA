*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
C001 - Rolar tela do aplicativo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar até o final da tela

CT002 - Visualizar informações pessoais de Nome
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue visualizar seu Nome

CT003 - Visualizar saldo bancário
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar saldo atual da Conta

CT004 - Navegar entre atalho de movimentação de dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar entre os atalhos de movimentação de moeda

CT005 - Visualizar atalho de Meus Cartões
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Meus Cartões
    E consegue clicar no atalho Meus Cartões

CT006 - Visualizar atalho de aviso de empréstimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar no atalho o valor disponivel para empréstimo

CT007 - Visualizar atalho para guardar dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Guardar Dinheiro
    E consegue clicar no atalho Guardar Dinheiro

C008 - Acessar a funcionalidade de Doacao
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao consegue clicar na funcionalidade de Doacao

C009 - Acessar funcionalidade Encontrar Atalhos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao clica na funcionalidade de Encontrar Atalhos

CT010 - Visualizar funcionalidade de Seguro de Vida
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então deve ser possível visualizar a funcionalidade de Seguro de Vida


    










    

    
    




    

