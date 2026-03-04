*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup      Connect To Database    pymysql    ${DBname}    ${DBuser}    ${DBpwd}    ${DBhost}    ${DBport}
Suite Teardown   Disconnect From Database

*** Variables ***
${DBname}    mydb
${DBuser}    root
${DBpwd}     root
${DBhost}    127.0.0.1    #Local_Host
${DBport}    3306

*** Test Cases ***
Create Person Table
    ${output}=    Execute Sql String    Create table person(ID integer, First_Name varchar(20), Last_Name varchar(20));
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None    #this will create Person table in database

#Inserting Data in Person table
#    ${output}=    Execute Sql String    Insert into person values(101,"John","JK");  # this is for single record
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None    #this will insert Person data in Person table

#Inserting Mutiple Data in Person table
#    ${output}=    Execute Sql Script     ./TestData/mydb_person_insertdata.sql  # this is for Multiple record through scipt file
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None    #this will insert Person data in Person table

#Check if data exist in database table person  #this will used to check datapresent in data base
#    Check If Exists In Database    select id from mydb.person where First_Name="David";

Check if data exist in database table person     ##this will used to check data is NOT present in data base
    Check If Not Exists In Database    select id from mydb.person where First_Name="D";

Check table exist in database or not  #used to check table exist or not
    Table Must Exist    person

Verify row count is zero
    Row Count Is 0    Select * from mydb.person WHERE First_Name="xyz";

Verify row count is equal to some value
    Row Count Is Equal To X    Select * from mydb.person WHERE First_Name="xyz";    1  #check 1 row or not

Verify row count is greater than some value
    Row count is greater than x    Select * from mydb.person WHERE First_Name="xyz";    1
