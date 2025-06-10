*** Settings ***
Library    AppiumLibrary
*** Variables ***
${REMOTE_URL}    http://127.0.0.1:4723
${PLATFORM_NAME}    Android
${DEVICE_NAME}    RRCR901D45F
# ${APP}    ${CURDIR}/../8.6.2.apk
${AUTOMATION_NAME}    UiAutomator2
${NEW_COMMAND_TIMEOUT}    3600
${APPPACKAGE}    com.telkomsel.telkomselcm
${APPACTIVITY}    com.telkomsel.mytelkomsel.view.splash.ui.SplashActivityRevamp
*** Keywords ***
Open Mytelkomsel Application
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    # ...    app=${APP}
    ...    appPackage=${APPPACKAGE}
    ...    appActivity=${APPACTIVITY}
    ...    automationName=${AUTOMATION_NAME}
    ...    newCommandTimeout=${NEW_COMMAND_TIMEOUT}
    ...    network=true    autoAcceptAllers=true    autoGrantPermissions=true
Close Mytelkomsel Application
    Close Application