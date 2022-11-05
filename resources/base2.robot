*** Settings ***
Library    AppiumLibrary
Library    libs/extend.py
Resource   helpers.robot

*** Variables ***
${AUTOMATION_NAME_ANDROID}    UiAutomator2
${ANDROID_APP}                ${EXECDIR}/app/twp.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}
${ANDROID_APP_PACKAGE}        io.appium.android.apis
${ANDROID_APP_ACTIVITY}       io.qaninja.android.twp.components.base.SplashActivity         
${ANDROID_DECICE_NAME}       deviceName=MI  
${ANDROID_UDID}              udid=30bdd416  


${AUTOMATION_NAME_IOS}        XCUITest
${IOS_APP}                    ${CURDIR}/../demoapp/TestApp.app.zip
${IOS_PLATFORM_NAME}          iOS
${IOS_PLATFORM_VERSION}       %{IOS_PLATFORM_VERSION=13.6}
${IOS_DEVICE_NAME}            iPhone 8

#${APPLEDEVELOPERTEAMID}       XXXXXXXXXXX


# Device to run the test on
${DEVICE}           Local
${APPIUM_SERVER}    http://0.0.0.0:4723/wd/hub
${PLATFORM}         ${${DEVICE}_PLATFORM}
${VERSION}          ${${DEVICE}_VERSION}
${DEVICENAME}       ${${DEVICE}_DEVICENAME}
${UDID}             ${${DEVICE}_UDID}
${APPNAME}          ${${DEVICE}_APPNAME}
${AUTOMATION_NAME}  ${${DEVICE}_AUTOMATION_NAME}

#Local 
${Local_DEVICENAME}           Local
${Local_UDID}                 emulator-5554
${Local_PLATFORM}             ${ANDROID_PLATFORM_NAME}
${Local_VERSION}              9
${Local_APPNAME}              ${EXECDIR}/app/twp.apk
${Local_AUTOMATION_NAME}      ${AUTOMATION_NAME_ANDROID}
#XIAOMI Mi 8 Lite
${MI_DEVICENAME}            MI
${MI_UDID}                 30bdd416
${MI_PLATFORM}             android
${MI_VERSION}              10
${MI_APPNAME}              ${EXECDIR}/app/twp.apk
${MI_AUTOMATION_NAME}      ${AUTOMATION_NAME_ANDROID}

#iPhone Xr
${iPhoneXr_DEVICENAME}       iPhoneXr
${iPhoneXr_UDID}             SET_UDID_HERE
${iphoneXr_PLATFORM}         iOS
${iPhoneXr_VERSION}          13.3
${iPhoneXr_APPNAME}          dev.zonneveld.exampleapp
${iPhoneXr_AUTOMATION_NAME}  ${AUTOMATION_NAME_IOS}







*** Keywords ***
Open Session
    Set Appium Timeout    5
    Open Application    ${APPIUM_SERVER}
    ...                  automationName=${AUTOMATION_NAME_ANDROID}
    ...                  platformName=${PLATFORM}
    ...                  deviceName=${DEVICENAME}  
    ...                  udid=${UDID}  
    ...                  app=${APPNAME}
    ...                  appPackage=${ANDROID_APP_PACKAGE}
    #...                  appActivity=${ANDROID_APP_ACTIVITY}
    # ...                  xcodeorgid=${APPLEDEVELOPERTEAMID} 
    # ...                  xcodesigningid=iPhone Developer  
    # ...                  wdaStartupRetries=4
    # ...                  iosInstallPause=8000    
    # ...                  wdaStartupRetryInterval=20000   
    # ...                  maxTypingFrequency=3000   
    
    Get Started

      
    
    

Close Session
    ${date}=        Get Current Date             exclude_millis=yes

    Capture Page Screenshot        ${TEST NAME} ${date}.png
    Close Application


# Open iOS Test App
#   Set Appium Timeout    5
#   Open Application  http://127.0.0.1:4723/wd/hub
#   ...               automationName=${IOS_AUTOMATION_NAME}
#   ...               app=${IOS_APP}  
#   ...               platformName=${IOS_PLATFORM_NAME}  
#   ...               platformVersion=${IOS_PLATFORM_VERSION}
#   ...               deviceName=${IOS_DEVICE_NAME}