** Settings ***
Documentation   this file handles all the operation in the login page of saucedemo

Resource    ../base/common_functionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=user-name
${PASSWORD_LOCATOR}     id=password
${LOGIN_LOCATOR}        xpath=//*[@id="login-button"]


*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Click Login
        Click Element    ${LOGIN_LOCATOR}
