*** Settings ***

Resource    ../../base.robot

*** Keywords ***
Visualiza o atalho
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Visible        ${elemento}

Clica no atalho
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}    
    Click Element                    ${elemento}

Espera para clicar no botão
    [Arguments]    ${elemento}
    Wait Until Keyword Succeeds    4    1    Clica no atalho    ${elemento}