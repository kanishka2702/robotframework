*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/LoginKeyWords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/
${user}    admin
${Password}    admin

*** Test Cases ***
Login_Test
    Open_My_Browser    ${SiteUrl}    ${Browser}
    Enter_User_Name    ${user}
    Enter_Password    ${Password}
    Click_SignIn_Button
    Sleep    3
    Verify_Successfull_Login
    Close_My_Browser
