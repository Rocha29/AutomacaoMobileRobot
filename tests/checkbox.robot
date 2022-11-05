*** Settings ***

Resource        ../resources/base.robot
# Executa a Kw antes de cada Testcase
Test Setup        Open Session
# Executa a KW depois de cada Testecase
Test Teardown     Close Session    
# Execucao no terminal robot -d ./logs tests/nav.robot

*** Test Cases ***
Cenario 01 : Deve marcar a opção Robot Framework
    Go To CheckBox
    ${element}=        Set Variable      xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]

    Click Element                        ${element}
    Wait Until Element Is Visible        id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match       ${element}        checked        true

