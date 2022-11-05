*** Settings ***
Library    AppiumLibrary


# {
#  "appium:deviceName": "Pixel",
#  "platformName": "Android",
#  "appium:udid": "emulator-5554",
#  "appium:app": "/Volumes/ROBSON HD/Users/workspace/AutomacaoMobile/app/twp.apk"
# }


*** Test Cases ***
Cenario 01 : Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                  automationName=UiAutomator2
    ...                  platformName=Android
    ...                  deviceName=Pixel  
    ...                  app=${EXECDIR}/app/twp.apk

    Wait Until Page Contains        Training Wheels Protocol        5
    Wait Until Page Contains        Mobile Version     
    Close Application


