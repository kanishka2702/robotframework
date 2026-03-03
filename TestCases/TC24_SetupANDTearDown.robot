*** Settings ***

Suite Setup    Log To Console    Opening-Browser  #Suite Setup will run  start of test suite
Suite Teardown    Log To Console    ClosingBrowser  #Suite Teardown will run end of test suite

Test Setup    Log To Console    LoginToApplication  #Suite Setup will run  start of test Case
Test Teardown    Log To Console    LogoutToApplican  #Suite Setup will run  end of test Case

*** Test Cases ***
TC1
    Log To Console    This First Test case
TC2
    Log To Console    This is Second Test case
TC3
    Log To Console    This is Third test case
TC4
    Log To Console    This is fourth test case
