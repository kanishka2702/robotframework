*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/LoginKeyWords.robot
Resource    ../Keywords/RegisterPageKeyWords.robot

*** Variables ***

#${SiteUrl}    https://demo.guru99.com/test/newtours/




*** Test Cases ***
Click on SUpport
    Click Element    xpath:/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[3]/a

