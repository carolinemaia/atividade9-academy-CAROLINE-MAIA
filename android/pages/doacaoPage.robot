*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${DOACAO}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]

*** Keywords ***
Entao clica na funcionalidade de Doacao
    Swipe By Percent    75    50    0    50    1000
    Click Element    ${DOACAO}


