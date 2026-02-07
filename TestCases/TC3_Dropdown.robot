*** Settings ***
Library    SeleniumLibrary
***Variables ***

${browser}     edge
${url}    https://seleniumbase.io/demo_page
${url1}    https://practice.expandtesting.com/dropdown

*** Test Cases ***
Handling Dropdowns and lists
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    sleep    2
    Select From List By Label    dropdown    Option 1
    Sleep    2
    Select From List By Index    country    6
    Sleep    2
    Select From List By Value    elementsPerPageSelect    50
    Sleep    5
    #ListBox
    #Unselect From List By Index
    Close Browser

