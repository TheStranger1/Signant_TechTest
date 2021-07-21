*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Documentation]     This Keyword is used for opening browser and maximizing browser window
    open browser  http://127.0.0.1:8080/  chrome
    maximize browser window

Click Register link from Home Page
    [Documentation]  This Keyword is used for opening the Register window
    click element    ${btn_HomePageRegister}

Click Login link from Home Page
    [Documentation]  This Keyword is used for opening the Log in window
    click element    ${btn_HomePageLogin}