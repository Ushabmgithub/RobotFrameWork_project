*** Settings ***
Documentation   This file handles all the menu for saucedemo application

Resource    ../base/common_functionality.resource


*** Variables ***
${menu}        xpath=//*[@id="react-burger-menu-btn"]
${about}       xpath=//*[@id="about_sidebar_link"]


*** Keywords ***

Open Menu
   [Arguments]     ${menu}
   Click Element   xpath=//*[@id="react-burger-menu-btn"]    ${menu}

Open About
    [Arguments]     ${about}
    Click Element    xpath=//*[@id="about_sidebar_link"]