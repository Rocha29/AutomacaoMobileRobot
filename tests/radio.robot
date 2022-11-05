*** Settings ***

Resource        ../resources/base.robot
# Executa a Kw antes de cada Testcase
Test Setup        Open Session
# Executa a KW depois de cada Testecase
Test Teardown     Close Session    
# Execucao no terminal robot -d ./logs tests/nav.robot

*** Test Cases ***
Cenario 01 : Deve selecionar a opção Python
    Go To Radion Buttons
    ${element}=        Set Variable     xpath=//android.widget.RadioButton[contains(@text,'Python')]

    Click Element                        ${element}
    Wait Until Element Is Visible        ${element}  

    Element Attribute Should Match       ${element}        checked        true

