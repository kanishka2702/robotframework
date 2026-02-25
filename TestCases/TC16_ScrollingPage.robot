*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}   https://www.countries-ofthe-world.com/flags-of-the-world.html


*** Test Cases ***
ScrollingTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0,2500)  #this will scroll down ,2500 is pixel upto which we want to scroll down
    Sleep    2
    Scroll Element Into View    //*[@id="ct-list"]/table[2]/tbody/tr[88]/td[1]/img  #Scroll will be done till the element
    Sleep    3
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)   #it will scroll down till end of the page

    Sleep    3
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)  #scroll upto starng point
    Sleep    3

    Close Browser

