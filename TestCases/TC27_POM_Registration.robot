*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/LoginKeyWords.robot
Resource    ../Keywords/RegisterPageKeyWords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/
${user_input}    admin
${Password_Input}    admin
${email}    abcs@hhh.com
${Fname}    kkjjhhgg
${Lname}    Rai


*** Test Cases ***
Registraton_Page_Test
    Open_My_Browser    ${SiteUrl}    ${Browser}
    click_register_Link
    Enter_FirstName    ${Fname}
    Enter_LastName    ${Lname}
    Enter_phone    0002220000
    Enter_Email    ${email}
    Enter_Address    30Tower street
    Input Text    ${txt_city}    Mumbai
    Input Text    ${txt_state}    Maharahstra
    Enter_postalCode    410210
    Select_country_from_dropdown    INDIA
    Enter_User_Name_Input    ${user_input}
    ENTER_password_Input    ${Password_Input}
    ENTER_Confirm_password    ${Password_Input}
    Sleep    10
    Click_Submit_Button
    Sleep    3
    Verify_Register_successfull
    Sleep    10
    Close_My_Browser


