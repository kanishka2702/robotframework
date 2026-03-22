*** Settings ***
Library    SeleniumLibrary
Library    openpyxl
Library    ../Keywords/utils.py
Resource    ../Keywords/ExcelRead_Keywords.robot
Library    Collections
*** Variables ***
${file_path1}    C:/Users/admin/PycharmProjects/robotframework/TestData/LoginData.xlsx
${sheet_name1}    Login
*** Test Cases ***
Read data from excel and return list
    ${get_data}=    Get Excel Data In List    ${file_path1}    ${sheet_name1}
    Log To Console    ${get_data} this the data
#    ${username}=    Get Dictionary Items    ${get_data}    username
#    Log To Console    ${username} this user name for input
    Log To Console    ${get_data[0]['username']} this user name
    Log To Console    ${get_data[0]['password']} this user name



