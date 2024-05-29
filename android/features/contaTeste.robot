*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
C001 - Acessar funcionalidade de conta
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E acessa a funcionalidade de conta
    Então deve ser possivel visualizar todas as informacoes da sua conta

C002 - Acessar funcionalidade Depositar pela tela de Conta
    Dado que o usuário está logado no aplicativo
    E o usuário está na tela de Conta
    Então consegue acessar a funcionalidade de Depósito pela tela de Conta
    E consegue visualizar todas as funcoes para depositar

C003 - Acessar funcionalidade Pagar pela tela de Conta
    Dado que o usuário está logado no aplicativo
    E o usuário está na tela de Conta
    E consegue acessar a funcionalidade de Pagar pela tela de Conta
    Então consegue visualizar todas as opcoes de Pagamento

C004 - Acessar funcionalidade Transferir pela tela de Conta
    Dado que o usuário está logado no aplicativo
    E o usuário está na tela de Conta
    Então consegue acessar a funcionalidade de Transferencia pela tela de Conta
    E consegue inserir um valor numerico no campo de inserir valor para Transferência

C005 - Acessar funcionalidade Emprestimo pela tela de Conta
    Dado que o usuário está logado no aplicativo
    E o usuário está na tela de Conta
    Então consegue acessar a funcionalidade de Emprestimo pela tela de Conta
    E consegue visualizar todos recursos da função Emprestimo

C006 - Acessar funcionalidade Cobrar pela tela de Conta
    Dado que o usuário está logado no aplicativo
    E o usuário está na tela de Conta
    Então consegue acessar a funcionalidade de Cobrar pela tela de Conta
    E consegue inserir um valor numerico no campo de inserir valor para Cobrança

C007 - Deve conseguir visualizar o Histórico de movimentação da Conta
    Dado que o usuário está logado no aplicativo
    E o usuário está na tela de Conta
    Então consegue visualizar todo o historico de movimentação da Conta

C009 - Deve conseguir clicar no icone de Ajuda
    Dado que o usuário está logado no aplicativo
    E o usuário está na tela de Conta
    Então consegue clicar no icone de ajuda da tela Conta

C009 - Deve conseguir retornar para tela inicial do aplicativo
    Dado que o usuário está logado no aplicativo
    E o usuário está na tela de Conta
    Então consegue retornar para tela inicial clicando em voltar



