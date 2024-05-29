*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
CT001 - Acessar funcionalidade de Pagar boleto
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E acessar a funcionalidade de Pagar
    Então consegue visualizar todas as opcoes de Pagamento

CT002 - Voltar para tela inicial apos acessar funcionalidade de PAGAR clicando no X
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de Pagar
    Então consegue retornar para tela inicial clicando no x de Pagar

CT003 - Voltar para tela inicial apos acessar funcionalidade de PAGAR deslizando tela para baixo
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de Pagar
    Então consegue retornar para tela inicial deslizando tela para baixo


