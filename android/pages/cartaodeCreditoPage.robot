*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${CARTAO_CREDITO}         xpath=//android.view.View[@content-desc="Cartão de Crédito\nFatura atual\nR$ 780,72\nLimite disponível R$ 806,78"]
${CARTAO_FATURA}          xpath=//android.view.View[@content-desc="Fatura atual"]
${CARTAO_VALOR_FATURA}    xpath=//android.view.View[@content-desc="R$ 780,72"]
${FATURA_PAGAR}           xpath=//android.view.View[@content-desc="Pagar fatura"]
${FATURA_RESUMO}          xpath=//android.view.View[@content-desc="Resumo de faturas"]
${FATURA_LIMITES}         xpath=//android.view.View[@content-desc="Ajustar limites"]
${CATAO_VIRTUAL}          xpath=//android.view.View[@content-desc="Cartão virtual"]
${FATURA_ITEM1}           xpath=//android.view.View[contains(@content-desc, "Pagamento recebido)]
${FATURA_ITEM2}           xpath=//android.view.View[contains(@content-desc, "Supermercado)]
${FATURA_ITEM3}           xpath=//android.view.View[@content-desc="Transferência enviada\nOntem\nBRENO FREITAS\nR$ 30,00\nPix"]
${CARTAO_LUPA}            xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${CARTAO__AJUDA}          xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[3]
${CARTAO_VOLTAR}          xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]

*** Keywords ***
Entao consegue visualizar resumo da fatura
    Swipe By Percent    50    90    50    40    1000

    Wait Until Element Is Visible    ${CARTAO_CREDITO}
    ${hint}=    Get Element Attribute    ${CARTAO_CREDITO}    hint
    Page Should Contain Text    Fatura atual
    Page Should Contain Text    R$ 780,72
    #Visualiza o atalho    ${CARTAO_CREDITO}

E consegue visualizar limite disponivel
    Wait Until Element Is Visible    ${CARTAO_CREDITO}
    ${hint}=    Get Element Attribute    ${CARTAO_CREDITO}    hint
    Page Should Contain Text    Limite disponível R$ 806,78

Quando o usuario acessa a tela de cartão de crédito
    Swipe By Percent    50    90    50    40    1000
    Clica no atalho    ${CARTAO_CREDITO}

Então consegue visualizar a fatural atual e limite disponivel
    Visualiza o atalho    ${CARTAO_FATURA}
    Visualiza o atalho    ${CARTAO_VALOR_FATURA}

E visualiza todas as funcionalidades do cartão de crédito
    Swipe By Percent    50    70    50    60    1000

    Visualiza o atalho    ${FATURA_PAGAR}
    Visualiza o atalho    ${FATURA_RESUMO}
    Visualiza o atalho    ${FATURA_LIMITES}
    Visualiza o atalho    ${CATAO_VIRTUAL}
                          

Então consegue visualizar as ultimas movimentações do cartão
    Wait Until Element Is Visible    ${CARTAO_FATURA}
    Swipe By Percent    50    90    50    20    1000
    Visualiza o atalho    ${FATURA_ITEM3}

Então consegue clicar no icone de pesquisa
    Clica no atalho    ${CARTAO_LUPA}

Então consegue clicar no icone de ajuda
    Clica no atalho    ${CARTAO__AJUDA}

Então consegue retornar para tela inicial
    Clica no atalho        ${CARTAO_VOLTAR}
    Swipe By Percent    50    20    50    80    1000
    Visualiza o atalho     ${DADOS_NOME}
    

     
    

    
    

    

