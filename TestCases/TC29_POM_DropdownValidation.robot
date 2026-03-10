*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../Keywords/UserDefineKeywords.robot
Resource    ../Keywords/Constants.robot

*** Variables ***


*** Test Cases ***
Verify Dropdown Values
    Open Browser    https://automationtesting.co.uk/dropdown.html    chrome
    Maximize Browser Window
    Get_Drop_Down_Values_and_Compare    id=cars    ${DropDownList}
    Sleep    5
    Close Browser



