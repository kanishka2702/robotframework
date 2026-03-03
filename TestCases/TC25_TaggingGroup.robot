*** Settings ***

*** Test Cases ***
TC1 User Registratn
    [Tags]    sanity    #this is tag test cases like sanity and Regression
    Log To Console    This First Test case
    Log To Console    User Registration
TC2 Login Test
    [Tags]    Regression    #this is tag test cases like sanity and Regression
    Log To Console    This is Second Test case
    Log To Console    Login Test is over
TC3 Change Use Setting
    [Tags]    Regression  #this is tag test cases like sanity and Regression
    Log To Console    This is Third test case
    Log To Console    This Channg user setting test
TC4 logout test
    [Tags]    sanity    #this is tag test cases like sanity and Regression
    Log To Console    This is fourth test case
    Log To Console    This logout testver

###***<b> User below command in Terminal to run test cases based on tagging introduce is test case</b>***###
#robot --include=sanity .\TestCases\TC25_TaggingGroup.robot
#robot --include=Regression .\TestCases\TC25_TaggingGroup.robot

###*** this command will include both tags in test cases***###
#robot -i sanity -i Regression .\TestCases\TC25_TaggingGroup.robot

###*** This command will Exclude test cases tag with Regression***###
#robot -e Regression .\Testcases\TC25_TaggingGroup.robot

###*** Include and exclude in same command***###
#robot -e Regression -i sanity .\Testcases\TC25_TaggingGroup.robot