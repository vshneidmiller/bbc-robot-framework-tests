*** Settings ***
Library     SeleniumLibrary
Library     Collections


*** Variables ***
${MENU_ITEMS}       (//*[@data-testid='header-content']//ul)[3]//li/a/span


*** Keywords ***
Verify Menu Items
    [Tags]    smoke
    [Arguments]    @{expected_menu_items}
    @{menu_items}    Get WebElements    ${MENU_ITEMS}

    @{menu_items_texts}    Create List
    FOR    ${menu_item}    IN    @{menu_items}
        ${menu_item_text}    Get Text    ${menu_item}
        Log    ${menu_item_text}
        Append To List    ${menu_items_texts}    ${menu_item_text}
    END
    Lists Should Be Equal    ${menu_items_texts}    ${expected_menu_items}
