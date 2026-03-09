*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
Get_Dropdown_Values
    Open Browser    https://automationtesting.co.uk/dropdown.html    chrome
    Maximize Browser Window
    ${options}=    Get List Items    id=cars  #this extract drop down value in list so that it can be compare

    Log To Console    ${options}

    @{expected}=    Create List    Audi    BMW    Ford    Honda    Jeep    Mercedes    Suzuki    Volkswagen
    Log To Console    ${expected} this is Expected list forcomparing

    ##Lists Should Be Equal    ${options}    ${expected}

    ${are_equal_as_sets}=    Evaluate    set(${options}) == set(${expected})  #this will be ed when don't want to follow order/Sequence in Dropdown
    Should Be True    ${are_equal_as_sets}


    Close Browser

