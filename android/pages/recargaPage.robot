*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${RECARGA}                    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${RECARGA_CAMPO_TELEFONE}     xpath=//android.widget.EditText
${RECARGA_NUMERO}             99982283679


*** Keywords ***
Então consegue acessar a funcionalidade de Recarga de Celular
    Swipe By Percent    75    50    0    50    1000
    Clica no atalho    ${RECARGA}

E visualiza o campo para inserir o numero de telefone
    Wait Until Element Is Visible    ${RECARGA_CAMPO_TELEFONE}
    ${texto_hint}=    Get Element Attribute    ${RECARGA_CAMPO_TELEFONE}    hint
    Should Contain    ${texto_hint}    Qual número você quer recarregar?
    Should Contain    ${texto_hint}    (DDD) + Número

Quando o usuário está na tela de Recarga de Celular
    Swipe By Percent    75    50    0    50    1000
    Clica no atalho    ${RECARGA}

Então consegue inserir numero de telefone com 11 digitos
    Wait Until Element Is Visible        ${RECARGA_CAMPO_TELEFONE}
    [Arguments]    ${element}    
    Input Text    ${RECARGA_CAMPO_TELEFONE}    ${element}
    Wait Until Keyword Succeeds    5    1       Element Should Contain Text    ${RECARGA_CAMPO_TELEFONE}    (99) 98228-3579

Então nao deve considerar caractere diferente de numero no campo de inserir telefone
    Wait Until Element Is Visible        ${RECARGA_CAMPO_TELEFONE}    
    [Arguments]    ${element}
    Input Text    ${RECARGA_CAMPO_TELEFONE}    ${element}
    Wait Until Keyword Succeeds    5    1       Element Should Contain Text    ${RECARGA_CAMPO_TELEFONE}    (99) 98228-3579

Então nao deve considerar valor inserido apos inserir telefone com 11 digitos
    Wait Until Element Is Visible        ${RECARGA_CAMPO_TELEFONE}   
    [Arguments]    ${element} 
    Input Text    ${RECARGA_CAMPO_TELEFONE}    ${element}
    Wait Until Keyword Succeeds    5    1       Element Should Contain Text    ${RECARGA_CAMPO_TELEFONE}    (99) 98228-3579
    



