*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Login_Resources.robot  #Referenced Resource file
Suite Setup    Open_My_Browser1  #this will executed before start of test case
Suite Teardown    Close_Browser    #This will executed after all the test completed
Test Template    Invalid_Login_Scenario  #This apply to all the test cases

*** Test Cases ***    username    password
Empty_Password    admin@yourstore.com    ${EMPTY}
Invalid_Password    admin@yourstore.com    xyz
Invalid_User    admin@yourstoreWW.com    admin
Invalid_User_Empty_Password    admin22@yourstore.com    ${EMPTY}
Invalid_UserPassword_Input    admin444@yourstore.com    ppoo

*** Keywords ***
Invalid_Login_Scenario
    [Arguments]    ${username}    ${password}
    Input_User_Name    ${username}
    Input_USE_PWD    ${password}
    Click_Login_button
    Error_Message_Validation
    Sleep    3