*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/Loginlocator.robot
*** Variables ***
${SWITCH_LANGMENU}    id=btn-lang
${SWITCH_LANGTH}    css:button[data-testid="nav-lang-opt-th"]

# Checkout Page
${CHECKOUT_CART}    id=btn-cart
# ${CHECKBOX_PRODUCT}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('input[id="chk-select-15"]')
${CHECKBOX_PRODUCT}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('input[type="checkbox"][id^="chk-select-"]')
# ${REMOVE_PRODUCT}   dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[id="btn-remove-15"]') 
${REMOVE_PRODUCT}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[id^="btn-remove-"]')
${REMOVE_POPUP}   dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('div[data-cart="cart-div0-div1-div2-div0"]')
${REMOVE_CONFIRM}   dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-cart="cart-div0-div1-div2-div0-div2-button1"]')
${REMOVE_CANCEL}   dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-cart="cart-div0-div1-div2-div0-div2-button0"]')
${CHECKOUT_BUTTON}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-testid="cart-proceed"]')

#Discount 
${DISCOUNT_DROPDOWN}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-cart="cart-div0-div1-div1-aside1-section1-div1-button0"]')
${DISCOUNT_COUPON}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('input[data-cart="cart-div0-div1-div1-aside1-section1-div2-div1-input0"]')
${COUPON_INPUT}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('input[data-testid="checkout-coupon-input"]')
${APPLY_COUPON}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-testid="cart-apply-coupon"]')
${PURCHASE_BUTTON}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-testid="checkout-place-order"]')

# Discount Amount
${COUPON_DISCOUNT}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('div[data-checkout="checkout-div0-aside2-section0-div3"]')