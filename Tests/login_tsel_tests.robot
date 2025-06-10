*** Settings ***
Documentation    Test suite for testing login functionality
Resource    ../Resources/common.robot
Resource    ../PageObjects/login_page.robot
# Suite Setup    Open WDIO Demo Application
# Suite Teardown    Close WDIO Demo Application
Test Teardown    Go Back
*** Test Cases *** 
Open MytelkomselApp
    Log    Open MytelkomselApp
    Open Mytelkomsel Application
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.telkomsel.telkomselcm:id/skip_btn"]
    Click Element    //android.widget.Button[@resource-id="com.telkomsel.telkomselcm:id/skip_btn"]
    Wait Until Element Is Visible    //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/tvOnboardPermissionTitle"]
    Click Element    //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/tvOnboardPermissionSkip"]
    Wait Until Element Is Visible    //android.view.ViewGroup[@resource-id="com.telkomsel.telkomselcm:id/headerContent"]
    Click Element    //android.widget.Button[@resource-id="com.telkomsel.telkomselcm:id/btn_login"]
    Wait Until Element Is Visible    //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/title" and @text="Masuk dengan Nomor Telkomsel"]
    Click Element    //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/title" and @text="Masuk dengan Nomor Telkomsel"]
    Wait Until Element Is Visible    //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/tvTitle"]
    # Login with invalid number
    Input Text    //android.widget.EditText[@resource-id="com.telkomsel.telkomselcm:id/etLoginForm"]    000000000
    Wait Until Element Is Visible    //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/tvLoginFormError"]
    Clear Text    //android.widget.EditText[@resource-id="com.telkomsel.telkomselcm:id/etLoginForm"]
    # Login with valid number
    Input Text    //android.widget.EditText[@resource-id="com.telkomsel.telkomselcm:id/etLoginForm"]    08132112342
    Click Element    //android.widget.Button[@resource-id="com.telkomsel.telkomselcm:id/btSecondTypePrimary"]