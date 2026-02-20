*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/UserDefineKeywords.robot

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/login.php
${browser}    chrome

*** Test Cases ***
TC1
    #LaunchBrowser                   #we are using user define keywords with no arguements

   #LaunchBrowser1    ${url}    ${browser}   #we are using user define keywords with 2 arguments
    ${pageTitle}=    LaunchBrowser2    ${url}    ${browser}   #we are using user define keywords with 2 arguments and return value
    Log To Console    ${pageTitle}
    Log    ${pageTitle}
    Input Text    name:userName    mercury

    Input Text    name:password    mercury
    Sleep    5



