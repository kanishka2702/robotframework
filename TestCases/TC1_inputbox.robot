*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    edge
${url}    https://www.saucedemo.com/
${Login_Input_Box}   xpath://input[@id='user-name']
${Passwod_Input_Box}    id:password

*** Test Cases ***
Login_InputBox
    OpenBrowser1
    Title Should Be    Swag Labs
    #Click Link    xpath://a[normalize-space()='Log in']
    sleep    1
    Input Text    ${Login_Input_Box}    standard_user
    Input Text    ${Passwod_Input_Box}    secret_sauce
    Sleep    3
    Clear Element Text    ${Login_Input_Box}
    Sleep    3
    Input Text    ${Login_Input_Box}    standard_user
    #Click Element    xpath://button[normalize-space()='Log in']
    Click Button    xpath://input[@id='login-button']
    Sleep    3
    Close Browser


*** Keywords ***
OpenBrowser1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

