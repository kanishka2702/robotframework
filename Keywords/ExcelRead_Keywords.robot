*** Settings ***
Library    SeleniumLibrary
Library    openpyxl
Library    ../Keywords/utils.py

*** Keywords ***
Get Excel Data In List
    [Documentation]    Reads data from an Excel file and returns it as a list of dictionaries
    [Arguments]    ${file_path}    ${sheet_name}
    ${data}=    get_excel_data_list    ${file_path}    ${sheet_name}
    Log To Console    ${data}
    RETURN    ${data}
