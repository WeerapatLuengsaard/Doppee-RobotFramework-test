*** Settings ***
Library    SeleniumLibrary
*** Variables ***
# Login URL
${BASE_URL}        https://training-platform2.doppio-tech.com
${LOGIN_URL}        ${BASE_URL}/signin
# Sign in locator
${USER_DROPDOWN}   id=nav-account
${ACCOUNT_MENU}         css:div[data-testid="nav-account-menu"]
# Shadow root and login locators
${SHADOW_HOST}     div[data-testid="shadow-host"]
${EMAIL_FIELD}     dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('input[data-testid="signin-email"]')
${PASSWORD_FIELD}  dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('input[data-testid="signin-password"]')
${LOGIN_BUTTON}    dom:document.querySelector('${SHADOW_HOST}').shadowRoot.querySelector('button[data-testid="signin-submit"]')



