*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/Checkoutlocator.robot
Resource    ../resources/PriceCalculation.robot
*** Keywords ***
Checkout selected items
    [Documentation]    Proceed to checkout with selected items in the cart
    Click Element    ${CHECKOUT_CART}
    Sleep    3s
    Switch Language to Thai
    Sleep    2s
    Click Element    ${CHECKBOX_PRODUCT}
    Sleep    3s
    Click Element    ${DISCOUNT_DROPDOWN}
    # Wait Until Element Is Enabled    ${DISCOUNT_COUPON}    2s 
    Sleep    3s
    Input Text    ${DISCOUNT_COUPON}    General12345
    Sleep    3s
    Click Element    ${APPLY_COUPON}    
    Sleep     5s
    Click Element    ${CHECKOUT_BUTTON}
    Sleep    2s

Remove the item from cart
    Click Element    ${CHECKOUT_CART}
    Sleep    3s
    Click Element    ${REMOVE_PRODUCT}
    Sleep    2s
    Wait Until Element Is Visible    ${REMOVE_POPUP}    2s
    Click Element    ${REMOVE_CONFIRM}
    Sleep    2s

    
Switch language to thai
    [Documentation]    Switch the website language to Thai
    ${lang_button_text}=    Get Text    ${SWITCH_LANGMENU}
    ${is_english}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//span[normalize-space(text())='EN']
    Run Keyword If    ${is_english}    Run Keywords
    ...    Click Element    ${SWITCH_LANGMENU}
    ...    AND    Wait Until Element Is Visible    ${SWITCH_LANGTH}    2s
    ...    AND    Click Element    ${SWITCH_LANGTH}
    ...    AND    Sleep    2s
