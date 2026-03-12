*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Keywords ***
#LaunchBrowser
#    Open Browser    ${url}    ${browser}
#    Maximize Browser Window

LaunchBrowser1
    [Arguments]    ${appUrl}    ${appBrowser}
    Open Browser    ${appUrl}    ${appBrowser}
    Maximize Browser Window


LaunchBrowser2
    [Arguments]    ${appUrl}    ${appBrowser}
    Open Browser    ${appUrl}    ${appBrowser}
    Maximize Browser Window
    ${title}=    Get Title
    RETURN    ${title}

Get_Drop_Down_Values_and_Compare
    [Arguments]    ${selectors}    ${expected}
    Wait Until Element Is Visible    ${selectors}
    ${options}=    Get List Items    ${selectors}
    Log To Console    ${options}
    Log To Console    ${expected} This is expected outcome for comparision
    Lists Should Be Equal    ${options}    ${expected}

TC31Select Option From Dropdown
    [Documentation]    Reusable keyword to select option from any dropdown.
    ...                Usage:
    ...                Select Option From Dropdown    id:country    India
    ...                Select Option From Dropdown    xpath=//select[@name="state"]    Maharashtra
    [Arguments]    ${locator}    ${option_text}
    Wait Until Element Is Visible    ${locator}    10s
    Select From List By Label        ${locator}    ${option_text}
