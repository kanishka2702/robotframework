*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables    ../PageOjects/Locators.py
Resource    ../Keywords/RegisterPageKeyWords.robot
Resource    ../Keywords/Constants.robot

*** Test Cases ***
Get_Dropdown_Values
    Open Browser    https://demo.guru99.com/test/newtours/    chrome
    Maximize Browser Window
    click_register_Link
    Sleep    3
    FOR    ${elements}    ${screen_shot_name}    IN ZIP    ${REGISTER_PAGE_ELEMENT_LIST}    ${SCREEN_NAME}
        Click Element    ${elements}
        Capture Page Screenshot    ${image_path}/${screen_shot_name}.png
    END
