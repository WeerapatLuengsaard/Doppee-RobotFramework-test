*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../resources/Productlocator.robot
Resource    ../resources/Testdata.robot
Resource    ../pages/Cartpage.robot
*** Keywords ***
Check product quantity
  ${exists}=    Run Keyword And Return Status    Page Should Contain Element    ${PRODUCT_QUANTITYCOUNT}
    IF    ${exists}
    ${CART_COUNT}=    Get Text    ${PRODUCT_QUANTITYCOUNT}
    ${CART_COUNT}=    Convert To Integer    ${CART_COUNT}
    Run Keyword If    ${CART_COUNT} >= 8    Remove the item from cart
    END

Add ceramic mug with autocomplete
    Input Text    ${SEARCH_FIELD}    ${SEARCHTERM}
    Wait Until Element Contains    ${SUGGEST_PRODUCT}     Ceramic Mug
    Click Element    ${SUGGEST_PRODUCT} 
    Sleep     2s
    Input Text    ${PRODUCT_QUANTITY}    ${MUG_QUANTITY}
    Click Element    ${PRODUCT_GRAYCOLOR}
    Click Element    ${PRODUCT_ADD}

Add ceramic mug without autocomplete
    Input Text    ${SEARCH_FIELD}    ${FULLMUG_NAME} 
    # Switch Language to Thai
    # Wait Until Element Contains    ${PRODUCT_ITEM}     Ceramic Mug
    Sleep    2s
    Click Element    ${SEARCH_BUTTON}
    Sleep     2s
    Click Element    ${PRODUCT_ITEM}
    Wait Until Element Is Visible    ${PRODUCT_QUANTITY}    2s
    Input Text    ${PRODUCT_QUANTITY}    ${MUG_QUANTITY}
    Sleep    2s
    Click Element    ${PRODUCT_GRAYCOLOR}
    Click Element    ${PRODUCT_ADD}