*** Settings ***

Resource    ../../base.robot

*** Keywords ***
Visualiza o atalho
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Visible        ${elemento}

Clica no atalho
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}    10
    Click Element                    ${elemento}

Clica em Fechar
    Wait Until Element Is Visible    xpath=//android.widget.Button    2
    Click Button    xpath=//android.widget.Button

  