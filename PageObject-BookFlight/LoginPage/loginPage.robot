*** Settings ***
Documentation        Berkaitan dengan test login page
Resource             ../base.robot


*** Keywords ***
Verify Homescreen
    Element Should Be Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]

Click Sign In Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]    

Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]   text=support@ngendigital.com

Input User Password
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]   text=abc123

Click Login Button On Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify Succes Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

