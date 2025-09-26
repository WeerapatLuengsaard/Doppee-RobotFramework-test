*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/Loginpage.robot
Resource    ../pages/Productpage.robot
Resource    ../pages/Cartpage.robot
Resource    ../resources/Testdata.robot
Resource    ../resources/PriceCalculation.robot

*** Test Cases ***
TCC-001 Auto Complete Mug Checkout
   Login With Valid Credentials    ${USERNAME}    ${PASSWORD}
   Wait Until Element Does Not Contain   css:div[data-testid="notifications-root"]    10s
   Check product quantity
   Add ceramic mug with autocomplete
   Sleep    3s
   Checkout selected items
   Sleep    3s
   Verify price calculation


    
