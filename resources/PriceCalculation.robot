*** Settings ***
library    SeleniumLibrary
Library    String
Resource    ../resources/Loginlocator.robot
Resource    ../resources/Pricelocator.robot
Resource    ../resources/Checkoutlocator.robot
*** Keywords ***
Verify price calculation
    [Documentation]    Verify the price calculation including subtotal, shipping, VAT, discount, and total price

    # ===== Step 1: ดึงข้อความราคาจากหน้าเว็บ =====
    ${subtotal_text}=    Get Text    ${SUBTOTAL_LOCATOR}          # ข้อความยอดรวมสินค้า
    ${total_price_text}=    Get Text    ${TOTAL_PRICE_LOCATOR}    # ข้อความราคาสุทธิ 
    ${shipping_text}=    Get Text    ${SHIPPING_LOCATOR}          # ข้อความค่าจัดส่ง 
    ${discount_text}=    Get Text    ${DISCOUNT_LOCATOR}          
    ${vat_text}=    Get Text    ${VAT_LOCATOR}                    # ข้อความ VAT
    ${total_novat_text}=    Get Text    ${TOTAL_NOVAT}              # ข้อความราคารวมไม่รวม VAT
    # ===== Step 2: แปลงข้อความราคาให้เป็นตัวเลข =====
    ${subtotal}=    Convert To Number    ${subtotal_text.replace('THB ', '').replace(',', '')}    # ลบ "THB " และ , ออก เพื่อให้กลายเป็นตัวเลข
    ${total_price}=    Convert To Number    ${total_price_text.replace('THB ', '').replace(',', '')}
    ${shipping}=    Convert To Number    ${shipping_text.replace('THB ', '').replace(',', '')}
    ${vat}=    Convert To Number    ${vat_text.replace('THB ', '').replace(',', '')}
    ${discount_amount}=    Evaluate    abs(float(re.sub(r'[^\\d.-]', '', """${discount_text}""")))    re
    ${discount}=    Convert To Number    ${discount_amount}
    ${total_novat}=    Convert To Number    ${total_novat_text.replace('THB ', '').replace(',', '')}
    # ===== Step 3: คำนวณราคา =====
    ${Finalprice}=    Evaluate    ${subtotal} + ${shipping} + ${vat} - ${discount}    #with vat
    # ${FinalpriceNoVat}=    Evaluate    (${subtotal} - ${discount}) + ${shipping}    
    Log    Final calculation ${Finalprice}
    # Log    Final calculation no vat ${FinalpriceNoVat}    
    Should Be Equal As Numbers    ${Finalprice}    ${total_price}    precision=0.01
    # Should Be Equal As Numbers    ${FinalpriceNoVat}    ${total_novat}    precision=0.01
    Log    Price calculation is correct.

