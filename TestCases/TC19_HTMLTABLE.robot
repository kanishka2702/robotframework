*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}   https://www.w3schools.com/sql/sql_distinct.asp

*** Test Cases ***
TableValidation
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    #Sleep    10
    ${rows}=    Get Element Count    xpath://*[@id="main"]/div[5]/table//tbody/tr
    ${columns}=    Get Element Count    xpath://*[@id="main"]/div[5]/table//tbody/tr[1]/th

    Log To Console    ${rows} this is row count
    Log To Console    ${columns} this column count

    ${data}=    Get Text    xpath://*[@id="main"]/div[5]/table//tbody/tr[5]/td[1]
    Log To Console    ${data} this is data


    #this will validate particular data in table like header should contain 'CustumerName' IN cOLUMN 2
    Table Column Should Contain    xpath://html/body/div[5]/div/div[2]/div[1]/div[1]/div[5]/table    2    CustomerName

    # this will validate particular data in table like particular row should contain '2' IN row 2
    Table Row Should Contain    xpath://html/body/div[5]/div/div[2]/div[1]/div[1]/div[5]/table   2    2

    # this will validate particular data in table like particular cell should contain "Christina Berglund" IN row 6 AND COLUMN 3
    Table Cell Should Contain    xpath://html/body/div[5]/div/div[2]/div[1]/div[1]/div[5]/table    6    3    Christina Berglund

    #this will verify table headers "PostalCode"
    Table Header Should Contain    xpath://html/body/div[5]/div/div[2]/div[1]/div[1]/div[5]/table    PostalCode

    Close Browser