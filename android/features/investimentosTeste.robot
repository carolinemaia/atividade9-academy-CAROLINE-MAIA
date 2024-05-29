*** Settings ***

Resource    ../../base.robot

Test Teardown     Teardown

*** Test Cases ***
CT001 - Visualizar funcionalidade de Investimentos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então deve ser possivel visualizar a funcionalidade de Investimentos

CT002 - Acessar funcionalidade de Investimentos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então deve ser possivel acessar a funcionalidade de Investimento clicando em Conhecer Mais
    E visualizar mais informações de investimento
