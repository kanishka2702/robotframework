*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/LoginKeyWords.robot
#Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet2
Library    ../Keywords/ExcelReader.py
Suite Setup    Login
Suite Teardown    Logout


#in __init__.robot file test case section is not required




*** Keywords ***
Login
    ${username}    ${password}=    Read Credentials From Excel    C:/Users/admin/PycharmProjects/robotframework/TestData/LoginData.xlsx
    Open_My_Browser    https://demo.guru99.com/test/newtours/    chrome
    Enter_User_Name    ${username}
    Enter_Password    ${password}
    Sleep    1
    Click_SignIn_Button
    Sleep    1
    Alert Should Not Be Present    action=accept    timeout=5s
    Verify_Successfull_Login

Logout
    Click_signoff



