*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/Loginpage.robot
Resource    ../pages/Productpage.robot
Resource    ../pages/Cartpage.robot
Resource    ../resources/Testdata.robot
Resource    ../resources/PriceCalculation.robot

*** Test Cases ***
TCC-002 Ceramic mug checkout without autocomplete
    Login with valid credentials    ${SECONDUSERNAME}    ${SECONDPASSWORD}
    Wait Until Element Does Not Contain   css:div[data-testid="notifications-root"]    10s
    Check product quantity
    Add ceramic mug without autocomplete
    Sleep    3s
    Checkout selected items
    Sleep    3s
    Verify price calculation