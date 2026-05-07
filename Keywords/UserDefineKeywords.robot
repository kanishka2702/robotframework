*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    DateTime


*** Keywords ***
#LaunchBrowser
#    Open Browser    ${url}    ${browser}
#    Maximize Browser Window

LaunchBrowser1
    [Arguments]    ${appUrl}    ${appBrowser}
    Open Browser    ${appUrl}    ${appBrowser}
    Maximize Browser Window


LaunchBrowser2
    [Arguments]    ${appUrl}    ${appBrowser}
    Open Browser    ${appUrl}    ${appBrowser}
    Maximize Browser Window
    ${title}=    Get Title
    RETURN    ${title}

Get_Drop_Down_Values_and_Compare
    [Arguments]    ${selectors}    ${expected}
    Wait Until Element Is Visible    ${selectors}
    ${options}=    Get List Items    ${selectors}
    Log To Console    ${options}
    Log To Console    ${expected} This is expected outcome for comparision
    Lists Should Be Equal    ${options}    ${expected}

Select Option From Dropdown
    [Documentation]    Reusable keyword to select option from any dropdown.
    ...                Usage:
    ...                Select Option From Dropdown    id:country    India
    ...                Select Option From Dropdown    xpath=//select[@name="state"]    Maharashtra
    [Arguments]    ${locator}    ${option_text}
    Wait Until Element Is Visible    ${locator}    10s
    Select From List By Label        ${locator}    ${option_text}

Select Suggestion By Partial Text without try catch
    [Arguments]    ${input_locator}    ${type_text}    ${partial_match}

    Input Text    ${input_locator}    ${type_text}
    Sleep    1    # small wait for suggestions to render (use Wait instead in real tests)

    # Find all suggestion items
    # here you can add wait untill elements is visible if required for suggestion variable
    @{suggestions}=    Get WebElements    xpath:of group of suggestion #This is comments
    Should Not Be Empty    ${suggestions}    msg=no suggestion found, check xpath or load time
    Log To Console    ${suggestions} these are suggestion
    FOR    ${item}    IN    @{suggestions}
        ${text}=    SeleniumLibrary.Get Text    ${item}
        #Log To Console    >>>>Item Text: ${text}
        IF    '${partial_match}' in '${text}'
            #Log To Console    >>>>Match Found:-- ${text}
            Click Element    ${item}
            BREAK
        END
    END

 Select Suggestion By Partial Text with try Catch
    [Arguments]    ${input_locator}    ${type_text}    ${partial_match}

    Input Text    ${input_locator}    ${type_text}
    Sleep    1s
    # here you can add wait untill elements is visible if required for suggestion variable
    @{suggestions}=    Get WebElements    xpath=//div[@role='listbox']//div[@role='option'] #This is dummy xpath for suggestion elements
    Log To Console    >>> Total suggestions found: ${suggestions.__len__()}

    Should Not Be Empty    ${suggestions}    msg=No suggestions found, check xpath or increase sleep time

    FOR    ${item}    IN    @{suggestions}
        ${text}=    Get Text    ${item}
        Log To Console    >>> Item Text: "${text}"

        IF    '${partial_match}' in '${text}'
            Log To Console    >>> Match found: "${text}" — clicking...
            TRY
                Click Element    ${item}
                Log To Console    >>> Click successful
            EXCEPT    AS    ${error}
                Log To Console    >>> Click failed: ${error}
            END
            BREAK
        ELSE
            Log To Console    >>> Not matched: "${text}"
        END
    END


 Verify Elements Are Visible and capture screenshots  #this keyword is used for validating list of elements using forLoop,capturing image of elements
    [Arguments]    @{elements}    ${path}  #@{elements} list of elements or any other list, ${path} where user wan to save images
    ${timestamp}=    Get Time    epoch
    FOR    ${index}    ${element}    IN ENUMERATE    @{elements}
        Scroll Element Into View
        ...    ${element}
        Wait Until Element Is Visible
        ...    ${element}
        ...    20s
        Element Should Be Visible
        ...    ${element}

        ${filename_elements}=    Set Variable
        ...    ${path}/${TEST NAME}_${index}_${timestamp}.png
        ${filename_page}=    Set Variable
        ...    ${path}/${TEST NAME}_${index}_${timestamp}_page.png

        Capture Element Screenshot    ${element}    ${filename_elements}
        Capture Page Screenshot    ${filename_page}
    END

 #using for loop to verify elements & capture screen shot, screenshots part is not mendatory
 Verify Elements Are Visible
    [Arguments]    ${timeout}=20s    ${path}=${NONE}    @{elements}
    ${timestamp}=    Get Time    epoch
    FOR    ${index}    ${element}    IN ENUMERATE    @{elements}
        Log    Verifying visible element [${index}]: ${element}
        Wait Until Element Is Visible    ${element}    ${timeout}
        Element Should Be Visible    ${element}
        IF    $path != $NONE
            ${filename}=    Set Variable    ${path}/${TEST NAME}_visible_${index}_${timestamp}.png
            Capture Element Screenshot    ${element}    ${filename}
        END
    END


# In this keyword user has to provide xpath/elements and list values which needs to validated
Click Zoom And Verify Url
    [Arguments]    ${element_xpath}    @{expected_url_suffixes}  #@{expected_url_suffixes} user can define list ${element_xpath} will besed to click element
    ${zoom_in_out_path}    D:/Drive/Test/  #this same path for now ignore it
    ${timestamp}=    Get Current Date    result_format=%Y-%m-%d_%H-%M-%S
    FOR    ${suffix}    IN    @{expected_url_suffixes}
        Wait Until Element Is Visible    ${element_xpath}
        Click Element    ${element_xpath}
        Sleep    1

        ${current_url}=    Get Location
        Sleep    3

        Should End With    ${current_url}    ${suffix}
        Capture Page Screenshot    ${zoom_in_out_path}/${suffix}_${timestamp}.png
    END

# This keyword reads key-value pairs from a two-column HTML table and returns them as a dictionary.
Get Object Details As Dictionary
    &{details}=    Create Dictionary

    # Get all rows from the table
    @{keys}=     Get WebElements    xpath://*[@id='object_info-details-box']//tr/td[1]  #In table first Column key
    @{values}=   Get WebElements    xpath://*[@id='object_info-details-box']//tr/td[2]    #In table 2nd column value

    FOR    ${index}    ${key}    IN ENUMERATE    @{keys}
        # Get label (left column) and value (right column)
        ${key_text}=      SeleniumLibrary.Get Text    ${key}
        ${value_text}=    SeleniumLibrary.Get Text    ${values}[${index}]
        Set To Dictionary    ${details}    ${key_text}=${value_text}
    END