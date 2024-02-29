*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser    http://localhost:3000/login   chrome


*** Variables ***

${PRODUCT_NAME}    เสื้อ opv การตูน

${product_price}             1000  
${product_description}       This is a sample product description.  
${contact_number}            1234567890 
${selling_title}             ประมูล


*** Keywords ***

Click Login Button
    Click Button        //*[@id="__nuxt"]/div[2]/div/div[3]/div/a[1]/div/button

Click Product Button
    Click Element    //*[@id="body w-fit"]/div[2]/div[1]/a

Click ProductII Button
    Click Element    //*[@id="body w-fit"]/div[2]/div[2]/a
Click addcart Button
    Click Button      //*[@id="__nuxt"]/div[3]/nav/div/div[2]/div[3]/button[2]
Click cart Button
    Click Element      //*[@id="__nuxt"]/div[1]/div[3]/ul/div/a[2]/li

Click chat Button
    Click Button      //*[@id="body w-fit"]/div[2]/div[1]/div/div/button

Click saleProduct Button
    Click Element      //*[@id="__nuxt"]/div[1]/div[3]/div/a
Input PRODUCT_NAME
    [Arguments]    ${PRODUCT_NAME}
    Input Text    //*[@id="name_product"]    ${PRODUCT_NAME}
Input product_price
    [Arguments]    ${product_price}  
    Input Text    //*[@id="price_product"]   ${product_price} 
Input product_description
    [Arguments]    ${product_description}
    Input Text    //*[@id="info_product"]   ${product_description}
Input contact_number
    [Arguments]    ${contact_number}
    Input Text    //*[@id="number_product"]   ${contact_number}
Input selling_title
    [Arguments]    ${selling_title} 
    Input Text    //*[@id="typeof_product"]   ${selling_title}
Click post Button
    Click Button      //*[@id="form"]/div[7]/button[2]

Click summary Button
    Click Element  //*[@id="__nuxt"]/div[1]/div[3]/ul/li/details/summary
Click profile Button
    Click Element  //*[@id="__nuxt"]/div[1]/div[3]/ul/li/details/ul/div/li[1]/a
Click edit Button
    Click Button   //*[@id="body w-fit"]/div[2]/div[1]/div/div/a/button

Click logout Button
    Click Element  //*[@id="__nuxt"]/div[1]/div[3]/ul/li/details/ul/div/li[4]/a
*** Test Cases ***

Test case_02
    Click Login Button
    Sleep    2s
    Page Should Contain Element    //*[@id="body w-fit"]/div[2]
Test case_03
    Click Login Button

    Sleep    2s
    Click Product Button
    Switch Window    NEW
    Sleep    2s
    Page Should Contain Element     //*[@id="__nuxt"]/div[3]/nav/div/div[1]/div[1]/img
Test case_04
    Click Login Button

    Sleep    2s
    Click ProductII Button
    Switch Window    NEW
    Click addcart Button
    Sleep    2s
    Click cart Button
    Wait Until Page Contains    ${PRODUCT_NAME}
Test case_05
    Click Login Button

    Sleep    2s
    Click chat Button
Test case_06
    Click Login Button

    Click saleProduct Button
    Sleep    2s
    Input PRODUCT_NAME          ${PRODUCT_NAME}
    Sleep    1s
    Input product_price         ${product_price}  
    Sleep    1s
    Input product_description   ${product_description}
    Sleep    1s
    Input contact_number        ${contact_number}
    Sleep    1s
    Input selling_title         ${selling_title}
    Sleep    2s
    Click post Button

Test case_07
    Click Login Button

    Click summary Button
    Sleep    2s
    Click profile Button
    Sleep    2s
    Click edit Button
    Sleep    1s
    Input PRODUCT_NAME          ${PRODUCT_NAME}
    Sleep    1s
    Input product_price         ${product_price}  
    Sleep    1s
    Input product_description   ${product_description}
    Sleep    1s
    Input contact_number        ${contact_number}
    Sleep    1s
    Input selling_title         ${selling_title}
    Sleep    2s
    Click post Button
Test case_08
    Click Login Button

    Click summary Button
    Sleep    2s
    Click logout Button
    Sleep    2s
Test case_09  
    Click Login Button

Test case_10 
    Click Login Button

Test case_11
    Click Login Button

Test case_12
    Click Login Button
