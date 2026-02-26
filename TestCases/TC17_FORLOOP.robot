*** Settings ***

*** Test Cases ***
ForLoop_RANGE
    FOR    ${i}    IN RANGE    1    10
         Log To Console    ${i}
    END


FORLOOP_IN
    FOR    ${a}    IN    1  2  3  4  5  6  7  8   #If single space then in cosole it will display values in sigle line &&if Double space then value will be printed on next line
        Log To Console    ${a}
    END


FORLOOP_INTEGER_LIST
    @{items}    Create List    1    2    3    4    5  #Creating interger list
    FOR    ${b}    IN    @{items}
        Log To Console    ${b}
    END

FORLOOP_STRINGS
    FOR    ${i}    IN    John    David    Scott  #Strings with Names
        Log To Console    ${i}
    END

FORLOOP_STRING_LIST
    @{names}    Create List    KR    ANJI    AMIT    sashi    #Creating String list
    FOR    ${i}    IN    @{names}
        Log To Console    ${i}
    END


FORLOOP_EXIT
    @{items}    Create List    1    2    3    4    5
    FOR    ${i}    IN    @{items}
        Log To Console     ${i}
        Exit For Loop If    ${i}==3
    END
