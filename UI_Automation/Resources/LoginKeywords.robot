*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords ***
Enter UserName in Login
    [Documentation]     This keyword is used for entering username while login
    [Arguments]         ${username}
    input text          ${txt_LoginUserName}   ${username}

Enter Password in Login
    [Documentation]     This keyword is used for entering password while login
    [Arguments]         ${password}
    input password      ${txt_LoginPassword}     ${password}

Click Login
    [Documentation]     This keyword is used for clicking the log in button
    click element       ${btn_Login}

Verify Successful Login
    [Documentation]         This keyword is used used for verifying successful login
    page should contain     User Information

Enter WrongUserName in Login
    [Documentation]     This keyword is used for entering wrong username while login
    [Arguments]         ${wrongusername}
    input text          ${txt_LoginUserName}   ${wrongusername}

Enter WrongPassword in Login
    [Documentation]     This keyword is used for entering wrong password while login
    [Arguments]         ${wrongpassword}
    input password      ${txt_LoginPassword}     ${wrongpassword}


#Verify Successful Login
#Username should be ${username}
#Password should be ${password}
#First name should be ${firstname}
#Last name should be ${lastname}
#Phone number should be ${phone}

