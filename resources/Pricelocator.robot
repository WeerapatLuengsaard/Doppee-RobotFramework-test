*** Settings ***
library    SeleniumLibrary
Resource    ../resources/Loginlocator.robot
*** Variables ***
${TOTAL_PRICE_LOCATOR}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('span[data-testid="checkout-total"]')
${SUBTOTAL_LOCATOR}       dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('span[data-testid="checkout-subtotal"]')  # หรือ locator ของ subtotal
${SHIPPING_LOCATOR}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('span[data-testid="checkout-shipping"] ')
${DISCOUNT_LOCATOR}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('span[data-testid="checkout-discount"]')
${VAT_LOCATOR}        dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('span[data-testid="checkout-vat"]')
# ${TOTAL_NOVAT}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('div[data-testid="checkout-item-line-total-15"]')
${TOTAL_NOVAT}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('div[data-testid^="checkout-item-line-total-"]')