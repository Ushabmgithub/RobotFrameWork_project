*** Settings ***
Documentation   This file handles all the menu for saucedemo application

Resource    ../base/common_functionality.resource



*** Variables ***
${cart}             xpath=//*[@id="add-to-cart-sauce-labs-onesie"]
${cart_view}        xpath=//*[@id="shopping_cart_container"]/a


*** Keywords ***
Add To Cart
     [Arguments]    ${cart}
    Click Element    xpath=//*[@id="add-to-cart-sauce-labs-onesie"]   ${cart}


View Cart
   [Arguments]     ${cart_view}
   Click Element   xpath=//*[@id="shopping_cart_container"]/a   ${cart_view}