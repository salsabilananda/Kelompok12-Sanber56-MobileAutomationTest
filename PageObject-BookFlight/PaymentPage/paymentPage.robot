*** Settings ***
Documentation        Berkaitan dengan test Payment
Resource             ../base.robot


*** Keywords ***
Click to Pay According to The Schedule
    # Element Should Be Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView6"]
    Click Element                   locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]

Click Confirm
    Click Element                   locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Verify Reservation Number 
    Element Should Be Visible       locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]