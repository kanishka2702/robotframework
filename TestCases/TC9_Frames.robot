*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${url}    https://www.selenium.dev/selenium/docs/api/java/index
${url1}    https://seleniumbase.io/demo_page
${browser}    chrome

*** Test Cases ***
HandlingFrames
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    Select Frame    frameName3
    Sleep    5
    Select Checkbox    checkBoxName6
    Sleep    5
    Unselect Frame    #to unselect frame
    Close Browser