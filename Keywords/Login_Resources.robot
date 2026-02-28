*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login_URL}    https://admin-demo.nopcommerce.com/
${Browse}    chrome

*** Keywords ***
Open_My_Browser1
    Open Browser    ${Login_URL}    ${Browse}
    Maximize Browser Window
    Sleep    5
Close_Browser
    Close All Browsers

Open_Login_Page
    Go To    ${Login_URL}

Input_User_Name
    [Arguments]    ${username}
    Input Text    xpath://*[@id="Email"]    ${username}

Input_USE_PWD
    [Arguments]    ${pwd}
    Input Text    id:Password    ${pwd}

Click_Login_button
    Click Button    xpath://*[@id="main"]/div/section/div/div[2]/div[1]/div/form/div[*]/button

Click_Logout
    Click Element    xpath://*[@id="navbarText"]/ul/li[3]/a

Error_Message_Validation
    Page Should Contain    Login was unsuccessful

DashBoard_Page_Validation
    Page Should Contain    Dashboard




