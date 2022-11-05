*** Settings ***

Resource        ../resources/base.robot
# Executa a Kw antes de cada Testcase
Test Setup        Open Session
# Executa a KW depois de cada Testecase
Test Teardown     Close Session    
# Execucao no terminal robot -d ./logs tests/nav.robot

*** Test Cases ***
Cenario 01 : Deve realizar um clique simples 
    [Tags]        short               
    Go To Short Click

    Click Element                        id=io.qaninja.android.twp:id/short_click
    Wait Until Page Contains             Isso é um clique simples
    


Cenario 02 : Deve realizar um clique Longo
    [Tags]        long        Regressivo   
    Go To Long Click
    
    Long Press        id=io.qaninja.android.twp:id/long_click        1000
    Wait Until Page Contains             CLIQUE LONGO OK

