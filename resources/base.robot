***Settings***

Library     AppiumLibrary
Library     libs/extend.py
Library    DateTime
Resource    helpers.robot

***Keywords***
Open Session
    Set Appium Timeout  10
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UIAutomator2
    ...                 platformName=Android
    ...                 deviceName=Local
    ...                 app=${EXECDIR}/app/twp.apk
    Get Started

Close Session
    ${date}=            Get Current Date        exclude_millis=yes
    Capture Page Screenshot    ${TEST NAME} ${date}.png
    Close Application
