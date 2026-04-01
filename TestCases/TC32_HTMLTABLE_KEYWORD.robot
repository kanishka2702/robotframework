*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${TABLE_XPATH}    //*[@id='object_info-details-box']  ## this sample table name

*** Keywords ***
Get Object Details As Dictionary
    #this keyword will return data in dictionary from html table
    &{details}=    Create Dictionary

    @{keys}=      Get WebElements    ${TABLE_XPATH}//tr/td[1]
    @{values}=    Get WebElements    ${TABLE_XPATH}//tr/td[2]

    FOR    ${index}    ${key}    IN ENUMERATE    @{keys}
        ${key_text}=      Get Text    ${key}
        ${value_text}=    Get Text    ${values}[${index}]
        Set To Dictionary    ${details}    ${key_text}=${value_text}
    END

    RETURN    ${details}

*** Test Cases ***
Validate  Object Details              ## this just fornderstanding
    Open Browser    https://your-app-url    chrome

    &{object_details}=    Get Object Details As Dictionary

    # ✅ Validate fields from your screenshot
    Should Be Equal    ${object_details}[Owner Type]                  SSEN
    Should Be Equal    ${object_details}[Owner Name]                  SHEPD
    Should Be Equal    ${object_details}[Location (MX)]               20063952
    Should Be Equal    ${object_details}[Type]                        Ground Mounted Distribution
    Should Be Equal    ${object_details}[Class]                       11kV/LV
    Should Be Equal    ${object_details}[Name]                        ASSAM ROAD
    Should Be Equal    ${object_details}[Site Code]                   9303419
    Should Be Equal    ${object_details}[Status]                      Existing
    Should Be Equal    ${object_details}[Data Confidence]             Surveyed
    Should Be Equal    ${object_details}[Situation]                   Indoor
    Should Be Equal    ${object_details}[Administrative Group (ADG)]  North East District
    Should Be Equal    ${object_details}[Locality (WAM)]              FORRES
    Should Be Equal    ${object_details}[RRP Category]                RRP106 - GM Indoor(HV)
    Should Be Equal    ${object_details}[Alias(PowerOn)]              452018103N
    Should Be Equal    ${object_details}[Design]                      2xHVSw+1xFSw+Trans+LV
```

---

### How the XPath Builds Up
```
# //*[@id='object_info-details-box']          → your table container
# //*[@id='object_info-details-box']//tr      → all rows inside it
# //*[@id='object_info-details-box']//tr/td[1]→ all label cells (left column)
# //*[@id='object_info-details-box']//tr/td[2]→ all value cells (right column)
