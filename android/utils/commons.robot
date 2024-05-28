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