*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    edge
#${url}    https://dev.to/mdmoeenajazkhan/ui-automation-testing-demo-site-4gid
${url}    https://practice-automation.com/window-operations/

*** Test Cases ***
TabbedWindowsTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
    Click Element    xpath://*[@id="post-1147"]/div/p[3]/button

    Sleep    3
    Switch Window    title=automateNow | The Best FREE Software Online Training Platform    #this will switch to another tab and use Page source to capture title
    Sleep    3
    Click Element    xpath=//*[@id="menu-item-24554"]/a/span
    Sleep    5
    Close All Browsers