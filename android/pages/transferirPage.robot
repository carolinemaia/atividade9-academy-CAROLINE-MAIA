*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${TRANSFERIR}                 xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${TRANSFERIR_VALOR_INICIAL}   xpath=//android.widget.EditText[@text="R$ 0,00"]

*** Keywords ***
Então consegue acessar a funcionalidade de Transferencia
    Clica no atalho    ${TRANSFERIR}

E o campo para inserir o valor deve estar zerado
    Visualiza o atalho    ${TRANSFERIR_VALOR_INICIAL} 