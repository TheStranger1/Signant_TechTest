*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Click Logout
    [Documentation]     This keyword is used for clicking the logout button
    click element       ${btn_logout}
