*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/LoginKeyWords.robot
Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet2
Suite Setup    Open_My_Browser    https://demo.guru99.com/test/newtours/    chrome
Suite Teardown    Close_My_Browser
Test Template    Login_With_Valid_Credentials



*** Test Cases ***
Login testwith valid creds using ${username} ${password}


*** Keywords ***
Login_With_Valid_Credentials
    [Arguments]    ${username}    ${password}

    Enter_User_Name    ${username}
    Enter_Password    ${password}
    Sleep    1
    Click_SignIn_Button
    Sleep    1
    Alert Should Not Be Present    action=accept    timeout=5s
    Verify_Successfull_Login
    Click_signoff


