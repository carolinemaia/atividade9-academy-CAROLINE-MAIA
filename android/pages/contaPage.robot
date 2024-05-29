*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${CONTA}               xpath=//android.view.View[@content-desc="Conta\nR$ 181,79"]
${SALDO_DISPONIVEL}    xpath=//android.view.View[@content-desc="Saldo disponível"]
${VALOR_SALDO}         xpath=//android.view.View[@content-desc="R$ 181,79"]
${DINHEIRO_GUARDADO}   xpath=//android.view.View[@content-desc="Dinheiro guardado\nR$ 240,02"]
${RENDIMENTO_TOTAL}    xpath=//android.view.View[@content-desc="Rendimento total da conta\n+R$ 0,20 este mês"]
${CONTA_DEPOSITAR}     xpath=//android.widget.HorizontalScrollView/android.widget.Button[1]
${CONTA_PAGAR}         xpath=//android.widget.HorizontalScrollView/android.widget.Button[2]
${CONTA_TRANSFERIR}    xpath=//android.widget.HorizontalScrollView/android.widget.Button[3]
${CONTA_EMPRESTIMO}    xpath=//android.widget.HorizontalScrollView/android.widget.Button[4]
${CONTA_COBRAR}        xpath=//android.widget.HorizontalScrollView/android.widget.Button[5]
${HISTORICO}           xpath=//android.view.View[@content-desc="Histórico"]
${HISTORICO_ITEM1}     xpath=//android.view.View[contains(@content-desc, "PATRICIA")]
${HISTORICO_ITEM2}     xpath=//android.view.View[contains(@content-desc, "ANDRE")]
${HISTORICO_ITEM3}     xpath=//android.view.View[contains(@content-desc, "ERIKO")]
${HISTORICO_ITEM4}     xpath=//android.view.View[contains(@content-desc, "IVAN")]
${CONTA_AJUDA}         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${CONTA_VOLTAR}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]

*** Keywords ***
E acessa a funcionalidade de conta
    Visualiza o atalho    ${CONTA}
    Clica no atalho    ${CONTA}

Então deve ser possivel visualizar todas as informacoes da sua conta
    Visualiza o atalho    ${SALDO_DISPONIVEL}
    Visualiza o atalho    ${VALOR_SALDO}
    Visualiza o atalho    ${DINHEIRO_GUARDADO}
    Visualiza o atalho    ${RENDIMENTO_TOTAL}

E o usuário está na tela de Conta
    Clica no atalho    ${CONTA}

Então consegue acessar a funcionalidade de Depósito pela tela de Conta
    Espera para clicar no botão    ${CONTA_DEPOSITAR}

E consegue acessar a funcionalidade de Pagar pela tela de Conta
    Espera para clicar no botão    ${CONTA_PAGAR}

Então consegue acessar a funcionalidade de Transferencia pela tela de Conta
    Espera para clicar no botão    ${CONTA_TRANSFERIR}

E consegue inserir um valor numerico no campo de inserir valor para Transferência
    Wait Until Element Is Visible        ${TRANSFERIR_CAMPO}    
    Input Text                           ${TRANSFERIR_CAMPO}            ${TRANSFERIR_VALOR_INSERIDO}
    Wait Until Keyword Succeeds    5    1    Element Text Should Be     ${TRANSFERIR_CAMPO}    R$ 40,00

Então consegue acessar a funcionalidade de Emprestimo pela tela de Conta
    Espera para clicar no botão    ${CONTA_EMPRESTIMO}

E consegue visualizar todos recursos da função Emprestimo
    Visualiza o atalho    ${EMPRESTIMO_VALOR}
    Visualiza o atalho    ${EMPRESTIMO_INFO_MUDANCA}
    Visualiza o atalho    ${EMPRESTIMO_INFO}
    Visualiza o atalho    ${NOVO_EMPRESTIMO}
    Visualiza o atalho    ${EMPRESTIMO_ATIVO}

Então consegue acessar a funcionalidade de Cobrar pela tela de Conta
    Espera para clicar no botão    ${CONTA_COBRAR}

E consegue inserir um valor numerico no campo de inserir valor para Cobrança
    Wait Until Element Is Visible        ${COBRAR_CAMPO}    3
    Input Text                           ${COBRAR_CAMPO}    8520
    Wait Until Keyword Succeeds    5    1    Element Text Should Be     ${COBRAR_CAMPO}    R$ 85,20

Então consegue visualizar todo o historico de movimentação da Conta
    Swipe By Percent    50    90    50    10    1000
    Visualiza o atalho    ${HISTORICO}
    Visualiza o atalho    ${HISTORICO_ITEM1}
    Visualiza o atalho    ${HISTORICO_ITEM2}
    Visualiza o atalho    ${HISTORICO_ITEM3}
    Visualiza o atalho    ${HISTORICO_ITEM4}

Então consegue clicar no icone de ajuda da tela Conta
    Clica no atalho    ${CONTA_AJUDA}

Então consegue retornar para tela inicial clicando em voltar
    Clica no atalho        ${CONTA_VOLTAR}
    Visualiza o atalho     ${DADOS_NOME}