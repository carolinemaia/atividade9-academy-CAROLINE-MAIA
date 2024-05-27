*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${ENCONTRAR_ATALHOS}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]  

*** Keywords ***
Entao clica na funcionalidade de Encontrar Atalhos
    Swipe By Percent    75    50    0    50    1000
    Click Element    ${ENCONTRAR_ATALHOS}
