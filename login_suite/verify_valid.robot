*** Settings ***
Documentation   This suite file verifies all test cases related to valid credentials

Resource     ../page/login_page.resource
Resource    ../base/common_functionality.resource
Resource     ../page/main_page.resource
Resource     ../page/about_page.resource

Library     DataDriver       file=..//test_data/Valid_Credentials.csv

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template       Verify Valid Credential Template

*** Test Cases ***
TC1

*** Keywords ***
Verify Valid Credential Template
    [Arguments]     ${username}     ${password}   ${cart}  ${cart_view}  ${menu}   ${about}
    Input Text    id=user-name   ${username}
    Input Password   id=password    ${password}
    Click Login
    Click Element    ${cart}
    Click Element    ${cart_view}
    Click Element    ${menu}
    Click Element    ${about}






