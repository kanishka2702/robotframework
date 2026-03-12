*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/LoginKeyWords.robot

*** Variables ***

${Browser}    chrome
${SiteUrl}    https://dribbble.com/shots/popular
${user}    admin
${Password}    admin

*** Test Cases ***
MouseHoverTestCase
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

    Wait Until Element Is Visible    xpath://a[normalize-space()='Explore']
    Mouse Over    xpath://a[normalize-space()='Explore']




