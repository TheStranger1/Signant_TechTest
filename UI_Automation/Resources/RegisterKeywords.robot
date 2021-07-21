*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords ***
Enter UserName
    [Documentation]     This keyword is used for entering username while registering
    [Arguments]         ${username}
    input text          ${txt_RegistrationUserName}  ${username}

Enter Password
    [Documentation]     This keyword is used for entering password while registering
    [Arguments]         ${password}
    input password      ${txt_RegistrationPassword}    ${password}

Enter FirstName
    [Documentation]     This keyword is used for entering first name while registering
    [Arguments]         ${firstname}
    input text          ${txt_RegistrationFirstName}    ${firstname}

Enter FamilyName
    [Documentation]     This keyword is used used for entering last name while registering
    [Arguments]         ${lastname}
    input text          ${txt_RegistrationFamilyName}    ${lastname}

Enter PhoneNumber
    [Documentation]     This keyword is used for entering phone number while registering
    [Arguments]         ${phone}
    input text          ${txt_RegistrationPhoneNumber}    ${phone}

Click Register
    [Documentation]     This keyword is used for clicking the Register button after filling up the details
    click element       ${btn_Register}


