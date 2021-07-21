*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords ***
Verifying user information
    [Documentation]     This keyword is used for verifying user information
    ${txt_AfterLoginUserName}       Get text    ${txt_AfterLoginUserName}
    ${txt_AfterLoginFirstName}      Get text    ${txt_AfterLoginFirstName}
    ${txt_AfterLoginLastName}       Get text    ${txt_AfterLoginLastName}
    ${txt_AfterLoginPhoneNumber}    Get text    ${txt_AfterLoginPhoneNumber}


    Should be equal as strings  ${txt_AfterLoginUserName}       ${username}
    Should be equal as strings  ${txt_AfterLoginFirstName}      ${firstname}
    Should be equal as strings  ${txt_AfterLoginLastName}       ${lastname}
    Should be equal as strings  ${txt_AfterLoginPhoneNumber}    ${phone}

