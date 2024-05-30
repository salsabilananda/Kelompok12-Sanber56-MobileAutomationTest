*** Settings ***
Documentation        Sign In - Negative Test Cases
Resource             ../base.robot

    //Sign In without Input Username
*** Keywords ***
Verify Homescreen
    Element Should Be Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]

Click Sign In Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]    


Input User Password
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]   text=abc123


Click Login Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]