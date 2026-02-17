*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    edge
${url}    https://www.google.com/
${url1}    https://practice-automation.com/window-operations/

*** Test Cases ***
TabbedWindowsTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Sleep    3

    Open Browser    ${url1}    ${browser}
    Maximize Browser Window

    Sleep    3

    Switch Browser    1   #used to switch browser, 1 indicate index of open browser(google)
    ${title1}=    Get Title
    Log To Console    ${title1}

    Switch Browser    2   #used to switch browser, 2 indicate index of open browser(practice-automation)
    ${title2}=    Get Title
    Log To Console    ${title2}

    Sleep    3

    Close All Browsers



