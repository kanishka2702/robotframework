*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    edge
${url}   https://www.bing.com/
${url1}    https://www.google.com/

*** Test Cases ***
BrowserNavigationTest
    Open Browser    ${url1}    ${browser}
    ${loc}=    Get Location   #get location will give URL of the web page
    Log To Console    ${loc}

    Sleep    3

    Go To    ${url}
    ${loc}=    Get Location  #get location will give URL of the web page
    Log To Console    ${loc}

    Sleep    3

    Go Back
    ${loc}=    Get Location           #get location will give URL of the web page
    Log To Console    ${loc}

    Sleep    2


    Close All Browsers