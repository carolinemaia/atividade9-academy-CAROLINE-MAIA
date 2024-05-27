*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${COBRAR}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${COBRAR_VALOR_INICIAL}    xpath=//android.widget.EditText[@text="R$ 0,00"]
${COBRAR_CAMPO}            xpath=//android.widget.EditText
${}


*** Keywords ***
Entao acessa a funcionalidade de Cobrar
    Swipe By Percent    75    50    0    50    1000
    Clica no atalho    ${COBRAR}
E o campo para inserir o valor de cobranca deve estar zerado
    Visualiza o atalho    ${COBRAR_VALOR_INICIAL}

Quando o usuario estar na tela de Cobrar
    Swipe By Percent    75    50    0    50    1000
    Clica no atalho    ${COBRAR}

Entao tem opcao de nao especificar o valor de cobranca
    Wait Until Element Is Visible    ${COBRAR_VALOR_INICIAL}
    ${texto_hint}=    Get Element Attribute    ${COBRAR_VALOR_INICIAL}    hint
    Should Contain    ${texto_hint}    Qual valor você quer receber?

Então consegue inserir um valor no campo de cobranca
    Wait Until Element Is Visible        ${COBRAR_CAMPO}    3
    Input Text                           ${COBRAR_CAMPO}    8520
    Wait Until Keyword Succeeds    5    1    Element Text Should Be     ${COBRAR_CAMPO}    R$ 85,20

Entao considera apenas os caracteres numericos inseridos no campo de cobranca
    Wait Until Element Is Visible        ${COBRAR_CAMPO}    3
    Input Text                           ${COBRAR_CAMPO}    985abc6
    Wait Until Keyword Succeeds    5    1    Element Text Should Be     ${COBRAR_CAMPO}    R$ 98,56

    