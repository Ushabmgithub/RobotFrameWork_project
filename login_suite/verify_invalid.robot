*** Settings ***
Documentation      This suit file handles all the test case related to the
...     invalid credentials

Resource   ../page/login_page.resource

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template       Verify Invalid Credential Template


Library    SeleniumLibrary

*** Test Cases ***
TC1     Ram          Ram123              Epic sadface: Username and password do not match any user in this service
TC2     Radha        Radha123            Epic sadface: Username and password do not match any user in this service
TC3     ${EMPTY}     Rahul               Epic sadface: Username is required
TC4     Rose         ${EMPTY}            Epic sadface: Password is required


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}         ${expected_error}
    Input Text           id=user-name    ${username}
    Input Text           id=password     ${password}
    Click Login
    Element Should Contain    xpath=//*[@id="login_button_container"]/div/form/div[3]/h3    ${expected_error}