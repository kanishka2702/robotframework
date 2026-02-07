*** Settings ***
Library    SeleniumLibrary
***Variables ***

${browser}     edge
${url}    https://seleniumbase.io/demo_page
${url1}    https://practice.expandtesting.com/radio-buttons
*** Test Cases ***
Testing_RadioButton_Checkboxes
    Open Browser    ${url}     ${browser}
    Maximize Browser Window
    Set Selenium Speed    2seconds
    Click Element    id:radioButton2
    Select Checkbox    checkBoxName2    #radio button
    Select Checkbox    checkBoxName4    #check boxes
    Unselect Checkbox    checkBoxName2    #Uncheck boxes
    Close Browser
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    Select Radio Button    color    blue    #radio button
    Select Radio Button    color    black    #radio button

    Close Browser