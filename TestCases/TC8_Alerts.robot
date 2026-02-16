
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
HandlingAlerts
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    xpath://*[@id="confirmBtn"]  #this open alerts popup
    Sleep    5
    #Handle Alert    accept    #this will be used to lick OK button on alerts popups
    #Handle Alert    dismiss    #this will be used to lick cancel button on alerts popups
    #Handle Alert    leave    #this will keep alerts window for some time
    Alert Should Be Present    Press a button!  #this will verify text in alerts popups
    #Alert Should Not Be Present    Press a button!







