*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${TRANSFERIR}                     xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${TRANSFERIR_VALOR_INICIAL}       xpath=//android.widget.EditText[@text="R$ 0,00"]
${TRANSFERIR_CAMPO}               xpath=//android.widget.EditText
${TRANSFERIR_VALOR_INSERIDO}      4000
${TRANSFERIR_VALOR_CARACTERE}     12A%50
${TRANSFERIR_VALOR_14DIG}         12345678901234
${TRANSFERIR_VALOR_EXTRA}         908070
${TRANSFERIR_FECHAR}              xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[1]
${TRANSFERIR_ICON_QRCODE}         xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[2]                   

*** Keywords ***
Então consegue acessar a funcionalidade de Transferencia
    Clica no atalho                    ${TRANSFERIR}

E o campo para inserir o valor deve estar zerado
    Visualiza o atalho                  ${TRANSFERIR_VALOR_INICIAL}

Quando o usuario esta na tela de Transferencia
    Clica no atalho                     ${TRANSFERIR}

Então consegue inserir um valor numerico no campo de inserir valor
    Wait Until Element Is Visible        ${TRANSFERIR_CAMPO}    
    Input Text                           ${TRANSFERIR_CAMPO}            ${TRANSFERIR_VALOR_INSERIDO}
    Wait Until Keyword Succeeds    5    1    Element Text Should Be     ${TRANSFERIR_CAMPO}    R$ 40,00

Então nao deve considerar caractere diferente de numero no campo de inserir valor
    Wait Until Element Is Visible        ${TRANSFERIR_CAMPO}    
    Input Text                           ${TRANSFERIR_CAMPO}            ${TRANSFERIR_VALOR_CARACTERE}
    Wait Until Keyword Succeeds    5    1    Element Text Should Be     ${TRANSFERIR_CAMPO}    R$ 12,50

Então nao deve considerar valor inserido apos 14 digitos
    Wait Until Element Is Visible        ${TRANSFERIR_CAMPO}    
    Input Text                           ${TRANSFERIR_CAMPO}            ${TRANSFERIR_VALOR_14DIG}
    Input Text                           ${TRANSFERIR_CAMPO}            ${TRANSFERIR_VALOR_EXTRA}
    Wait Until Keyword Succeeds    5    1    Element Text Should Be     ${TRANSFERIR_CAMPO}    R$ 123.456.789.012,34

Então consegue clicar no icone de Qrcode
    Clica no atalho                      ${TRANSFERIR_ICON_QRCODE}
