*** Settings ***

Resource    ../../base.robot

Test Teardown     Teardown

*** Test Cases ***

C001 - Visualizar resumo de informacoes do Cartao de Credito
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao consegue visualizar resumo da fatura
    E consegue visualizar limite disponivel

C002 - Acessar funcionalidade de Cartão de Crédito
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue visualizar a fatural atual e limite disponivel
    E visualiza todas as funcionalidades do cartão de crédito

C003 - Deve ser possível visualizar as ultimas movimentações do cartão de crédito
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue visualizar as ultimas movimentações do cartão

C004 - Na tela de funcionalidade de Cartão de Crédito deve ser possivel clicar na lupa de pesquisa
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue clicar no icone de pesquisa

C005 - Na tela de funcionalidade de Cartão de Crédito deve ser possivel clicar no icone de ajuda
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue clicar no icone de ajuda

C006 - Na tela de funcionalidade de Cartão de Credito deve ser possivel retornar para tela inicial
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue retornar para tela inicial
