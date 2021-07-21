*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonKeywords.robot
Resource    ../Resources/RegisterKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/LogoutKeywords.robot
Resource    ../Resources/MainViewKeywords.robot

*** Variables ***
${SiteUrl}    http://127.0.0.1:8080/
${Browser}    chrome
${username}   John
${password}   Test@123
${firstname}  John
${lastname}   Michael
${phone}      555555



*** Test Cases ***
Registration Test
    [Tags]              Robot Test
    [Documentation]     This testcase is for checking the user Registration process
    [Setup]             Open my browser
    [Teardown]          close all browsers
    Click register link from home page
    Enter username      ${username}
    Enter password      ${password}
    Enter firstname     ${firstname}
    Enter familyname    ${lastname}
    Enter phonenumber   ${phone}
    Click register

Login Test
    [Tags]              Robot Test
    [Documentation]     This testcase is for checking the log in functionality
    [Setup]             Open my browser
    [Teardown]          close all browsers
    Click login link from home page
    Enter username in login     ${username}
    Enter password in login     ${password}
    Click Login
    Verify successful login
    Verifying user information
    Click logout

