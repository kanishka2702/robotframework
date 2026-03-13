*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Login_Resources.robot

#For dataDriven Testing with Excel and Csv we need to install Below Library in Python Environment variable
#Robotframework-datadriver
#For data driven excel you need to run this command to install EXCEL <B>pip install -U robotframework-datadriver[XLS]</B>

Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet1
Suite Setup    Open_My_Browser1
Suite Teardown    Close_Browser
Test Template    Invalid_Login_scenario_excel


*** Test Cases ***
LoginTestWithExcel using ${username} ${password}


*** Keywords ***
Invalid_Login_scenario_excel
    [Arguments]    ${username}    ${password}
    Input_User_Name    ${username}
    Input_USE_PWD    ${password}
    Click_Login_button
    Error_Message_Validation
    Sleep    3

#Install via pip install robotframework-datadriver[XLS] to support Excel (.xlsx/.xls).
 #​
 #Import in *** Settings ***: Library DataDriver file=yourfile.xlsx sheet_name=Sheet1.
 #Define one template test case with Test Template YourKeyword, where YourKeyword matches Excel column headers (e.g., ${username}, ${password}) as arguments.
 #​
 #DataDriver generates multiple test cases dynamically from Excel rows; first column *** Test Cases *** names them optionally.