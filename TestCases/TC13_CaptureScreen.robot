*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    edge
${url}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${url1}    https://www.google.com/

*** Test Cases ***
BrowserNavigationTest
    Open Browser    ${url}    ${browser}
    Sleep    10
    Maximize Browser Window
    Input Text    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Input Text    name:password    admin123
    Sleep    5
    Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img    C:/Users/admin/PycharmProjects/robotframework/HRMLogo.png
    Sleep    2
    Capture Page Screenshot    C:/Users/admin/PycharmProjects/robotframework/LOGINHRM.png

    #Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img    HRMLogo.png-->If you don't specify path then by default it will save in your project directory which is robotframework

    #Capture Page Screenshot    LOGINHRM.png-->If you don't specify path then by default it will save in your project directory which is robotframework