*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Login_Resources.robot

#For dataDriven Testing with Excel and Csv we need to install Below Library in Python Environment variable
#Robotframework-datadriver
#For data driven excel you need to run this command to install EXCEL <B>pip install -U robotframework-datadriver[XLS]</B>

Library    DataDriver    ../TestData/TestData.csv
Suite Setup    Open_My_Browser1
Suite Teardown    Close_Browser
Test Template    Invalid_Login_scenario_excel


*** Test Cases ***
LoginTestWithExcel using ${username} & ${password}


*** Keywords ***
Invalid_Login_scenario_excel
    [Arguments]    ${username}    ${password}
    Input_User_Name    ${username}
    Input_USE_PWD    ${password}
    Click_Login_button
    Error_Message_Validation
    Sleep    3

