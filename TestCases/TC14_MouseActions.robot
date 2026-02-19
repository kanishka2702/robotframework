*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    edge
${url}   https://www.onlinemictest.com/mouse-test/
${url1}    https://www.google.com/
${url2}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
MouseClickActions
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Open Context Menu    xpath://*[@id="menu-item-12"]/a    #Mouse right Click
    Sleep    3

    Go To    ${url2}
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button  #this perform Mouse double click
    Sleep    5

    Drag And Drop    id:draggable    id:droppable   #this perform Mouse Drag and Drop operation

    Sleep    6
    Close Browser