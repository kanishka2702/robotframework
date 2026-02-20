*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#LaunchBrowser
#    Open Browser    ${url}    ${browser}
#    Maximize Browser Window

LaunchBrowser1
    [Arguments]    ${appUrl}    ${appBrowser}
    Open Browser    ${appUrl}    ${appBrowser}
    Maximize Browser Window


LaunchBrowser2
    [Arguments]    ${appUrl}    ${appBrowser}
    Open Browser    ${appUrl}    ${appBrowser}
    Maximize Browser Window
    ${title}=    Get Title
    RETURN    ${title}
