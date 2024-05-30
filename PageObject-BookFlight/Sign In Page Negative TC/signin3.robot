*** Settings ***
Documentation        Sign In - Negative Test Cases
Resource             ../base.robot

    //Sign In without Input Password
*** Keywords ***
Verify Homescreen
    Element Should Be Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]

Click Sign In Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]    


Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]   text=support@ngendigital.com


Click Login Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]