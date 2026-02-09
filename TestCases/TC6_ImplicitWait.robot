*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://demowebshop.tricentis.com/register
${browser}    chrome

*** Test Cases ***
WaitSpeedSleep

    open browser        ${url}    ${browser}
    maximize browser window

    ${Implicittime}=    Get Selenium Implicit Wait
    Log To Console    ${Implicittime}

    Set Selenium Implicit Wait    10 seconds  #if set this then its applicable to all below statements

    ${Implicittime}=    Get Selenium Implicit Wait
    Log To Console    ${Implicittime}

    select radio button    Gender         M
    input text    name:FirstName1    David     #I have put FirstName1 which not correct selectors or xPath
    input text    name:LastName       John
    input text    name:Email          anhc@gmail.com
    input text    name:Password       davidjohn
    input text    name:ConfirmPassword    davidjohn

    Close Browser
