*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://demowebshop.tricentis.com/register
${url1}    https://www.google.com/
${browser}    chrome

*** Test Cases ***
CloseAllBrowser

    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}

    open browser        ${url}    ${browser}
    maximize browser window

    open browser        ${url1}    ${browser}
    maximize browser window

    #Close Browser    #this will close one browser
    Close All Browsers




