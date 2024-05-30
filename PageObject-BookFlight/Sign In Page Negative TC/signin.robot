*** Settings ***
Documentation        Sign In - Negative Test Cases
Resource             ../base.robot

    //Sign In with wrong format username
*** Keywords ***
Homescreen
    Element Should Be Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]

Click Sign In Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]    


Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]   text=support@


Click Login Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]


    



