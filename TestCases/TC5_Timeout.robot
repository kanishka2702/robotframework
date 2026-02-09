*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://demowebshop.tricentis.com/register
${browser}    chrome

*** Test Cases ***
WaitSpeedSleep

    open browser        ${url}    ${browser}
    maximize browser window

    ${time}=    Get Selenium Timeout
    Log To Console    ${time}

    Set Selenium Timeout    10 seconds  #Now wait page appearith Register title for 10 sesconds instead default timeout which is 5 seconds
    Wait Until Page Contains    Register1     #Default time is 5 seconds in console this will appear, Register1 is not proper title on page

    select radio button    Gender         M
    input text             name:FirstName      David
    input text             name:LastName       John
    input text             name:Email          anhc@gmail.com
    input text             name:Password       davidjohn
    input text             name:ConfirmPassword    davidjohn

    Close Browser
