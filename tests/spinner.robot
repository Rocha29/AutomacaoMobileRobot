*** Settings ***

Resource        ../resources/base.robot
# Executa a Kw antes de cada Testcase
Test Setup        Open Session
# Executa a KW depois de cada Testecase
Test Teardown     Close Session    
# Execucao no terminal robot -d ./logs tests/nav.robot
*** Variables ***
${SPINNER}=            id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}=       class=android.widget.ListView 
*** Test Cases ***
Cenario 01 : Deve selecioionar um perfil QA
    Go To SingUp Form

    Choice spinner Job    QA


Cenario 02 : Deve selecioionar um perfil DevOps
    Go To SingUp Form

    Choice spinner Job    DevOps

    
    

*** Keywords ***
Choice spinner Job    
    [Arguments]        ${target}

    Click Element                        ${SPINNER}

    Wait Until Element Is Visible        ${LIST_OPTIONS}

    Click Text            ${target}

    
