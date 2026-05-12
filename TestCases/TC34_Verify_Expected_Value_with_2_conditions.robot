*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables    ../PageOjects/Locators.py
Resource    ../Keywords/RegisterPageKeyWords.robot
Resource    ../Keywords/Constants.robot


*** Test Cases ***
VERIFY_EXPECTED_VALUE_WITH_2_CONDITIONS
    Open Browser    https://demo.guru99.com/test/newtours/    chrome
    Maximize Browser Window
    click_register_Link
    Sleep    5s


    ${get_Text}=    Get Text    ${register_link}
    Log To Console    ${get_Text}


    # verifying 2 condition, out of which 1 should be true, ${ge_Text} is REGISTER then is_Text1 is true
    ${is_Text1}=    Run Keyword And Return Status    Should Contain    ${get_Text}    REGISTER
    ${is_Text2}=    Run Keyword And Return Status    Should Contain    ${get_Text}    lastName
    Should Be True    ${is_Text1} or ${is_Text2}    msg=URL '${get_Text}' did not contain 'firstName' or 'lastName'





