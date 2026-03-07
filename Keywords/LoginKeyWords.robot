*** Settings ***
Library    SeleniumLibrary
Variables    ../PageOjects/Locators.py

*** Keywords ***
Open_My_Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
Enter_User_Name
    [Arguments]    ${UserName}
    Input Text    ${txt_LoginUserName}    ${UserName}

Enter_Password
    [Arguments]    ${Password}
    Input Text    ${txt_LoginPassword}    ${Password}

Click_SignIn_Button
    Click Button    ${btn_signIn}

Verify_Successfull_Login
    #Title Should Be    Login Successfully
    Element Text Should Be    ${txt_logintext}    Thank you for Loggin.

Close_My_Browser
    Close All Browsers



