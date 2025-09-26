*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/Loginlocator.robot
*** Variables ***
${SEARCH_FIELD}    css:input[data-testid="nav-search-input"]
${SEARCH_BUTTON}    css:button[data-testid="nav-search-submit"]
${SUGGEST_PRODUCT}    css:div[data-testid="nav-search-suggest"]
${PRODUCT_ITEM}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('img[alt="Ceramic Mug"]')
${PRODUCT_QUANTITY}   dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('input[data-testid="pd-qty-input"]')
${PRODUCT_WHITECOLOR}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-testid="pd-opt-color-White"]')
${PRODUCT_GRAYCOLOR}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-testid="pd-opt-color-Gray"]')
${PRODUCT_ADD}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-testid="pd-add-to-cart"]')
${PRODUCT_QUANTITYCOUNT}     css:span[data-testid="nav-cart-count"]
