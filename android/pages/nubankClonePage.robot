*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot

*** Variables ***
${DADOS_NOME}    xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${DADOS_CONTA}   xpath=//android.view.View[contains(@content-desc,'Conta')]




*** Keywords ***
Dado que o usuário está logado no aplicativo
    Open App

Quando o usuário está na tela inicial
    Wait Until Page Contains Element    ${DADOS_NOME}
    Page Should Contain Element    xpath=//android.widget.ScrollView/android.view.View[1]
    Page Should Contain Element    xpath=//android.widget.ScrollView/android.widget.Button[1]
    Page Should Contain Element    xpath=//android.widget.ScrollView/android.widget.Button[2]
    Page Should Contain Element    xpath=//android.widget.ScrollView/android.widget.Button[3]   

Então consegue visualizar seu Nome
    Wait Until Page Contains Element    ${DADOS_NOME}    10s
    ${content_desc}=    Get Element Attribute    ${DADOS_NOME}    content-desc
    Page Should Contain Text    ${content_desc}    Olá, Breno Freitas
Então consegue visualizar saldo atual da Conta
    Element Should Be Visible      ${DADOS_CONTA}

Então consegue navegar entre os atalhos de movimentação de moeda
    Swipe    308    872    786    872
    Swipe    786    872    238    872


