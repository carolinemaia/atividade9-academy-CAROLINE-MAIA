*** Settings ***

Resource    ../base.robot
Resource    ../utils/config.robot

Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
Clicar em um elemento
    Click Element    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]