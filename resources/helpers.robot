*** Settings ***
Documentation        Aqui Teremos as KWS helpers

*** Variables ***
${START}        COMEÇA
${HAMBURGER}    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}     id= io.qaninja.android.twp:id/rvNavigation  


*** Keywords ***
Get Started
    Wait Until Page Contains            ${START}   
    Click Text                          ${START}
Open navigation    
    Wait Until Element Is Visible       ${HAMBURGER}        
    Click Element                       ${HAMBURGER}
    Wait Until Element Is Visible       ${NAV_VIEW}

Go To Login Forms
    Open navigation
    Click Text                      FORMS
    Wait Until Page Contains        FORMS

    Click Text                      LOGIN
    Wait Until Page Contains        Fala QA, vamos testar o login?

Go To Radion Buttons
    Open navigation

    Click Text                    INPUTS
    Wait Until Page Contains      INPUTS

    Click Text                    BOTÕES DE RADIO
    Wait Until Page Contains      Escolha sua linguagem preferida


Go To CheckBox
    Open navigation

    Click Text                    INPUTS
    Wait Until Page Contains      INPUTS

    Click Text                    CHECKBOX
    Wait Until Page Contains      Marque as techs que usam Appium


Go To Short Click
     Open navigation

     Click Text                    BOTÕES
     Wait Until Page Contains      CLIQUE SIMPLES

     Click Text                    CLIQUE SIMPLES
     Wait Until Page Contains      Botão clique simples     


Go To Long Click
     Open navigation

     Click Text                    BOTÕES
     Wait Until Page Contains      CLIQUE LONGO

     Click Text                    CLIQUE LONGO
     Wait Until Page Contains      Botão clique longo     


Go To SingUp Form
    Open navigation
    Click Text                      FORMS
    Wait Until Page Contains        FORMS

    Click Text                      CADASTRO
    Wait Until Page Contains        Cadastro


Go To Avenger List
     Open navigation

     Click Text                    AVENGERS
     Wait Until Page Contains      AVENGERS

     Click Text                    LISTA
     Wait Until Page Contains      LISTA     

    
    