*** Settings ***
Library    SeleniumLibrary
Variables    ../PageOjects/Locators.py

*** Keywords ***
click_register_Link
    Click Link    ${register_link}

Enter_FirstName
    [Arguments]    ${FirstName}
    Input Text    ${txt_firstname}    ${FirstName}

Enter_LastName
    [Arguments]    ${LastName}
    Input Text    ${txt_lastname}    ${LastName}

Enter_phone
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}

Enter_Email
    [Arguments]    ${Email}
    Input Text    ${txt_email}    ${Email}

Enter_Address
    [Arguments]    ${address}
    Input Text    ${txt_address}    ${address}

Enter_postalCode
    [Arguments]    ${postalcode}
    Input Text    ${txt_postalcode}    ${postalcode}

Select_country_from_dropdown
    [Arguments]    ${Country}
    Select From List By Label    ${dropdown_country}    ${Country}

Enter_User_Name_Input
    [Arguments]    ${UserName}
    Input Text    ${txt_username_input}    ${UserName}

ENTER_password_Input
    [Arguments]    ${Password}
    Input Text    ${txt_password_input}   ${Password}


ENTER_Confirm_password
    [Arguments]    ${ConfirmPassword}
    Input Text    ${txt_Confirm_password}    ${ConfirmPassword}

Click_Submit_Button
    Click Button    ${button_submit}

Verify_Register_successfull
    Title Should Be    Register: Mercury Tours







