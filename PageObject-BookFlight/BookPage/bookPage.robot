*** Settings ***
Documentation    Halaman Booking Tiket Pesawat
Resource         ../base.robot

*** Keywords ***
Click BookPage Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Verify Book Page
    Wait Until Element Is Visible    locator=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.view.ViewGroup

Select Departure from Toronto 
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="New York"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Toronto"]       

Select Destination to Paris
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="London"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]        

Select Flight Class
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Economy"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Economy"]    

Choose Start Date
    Click Element                    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    # Element Should Be Visible        locator=//android.widget.LinearLayout[@resource-id="android:id/parentPanel"]
    Wait Until Element Is Visible    locator=//android.view.View[@content-desc="03 August 2019"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]

Choose End Date
    Click Element                     locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    # Element Should Be Visible        locator=//android.widget.LinearLayout[@resource-id="android:id/parentPanel"]
    Click Element                    locator=//android.view.View[@content-desc="21 August 2019"]  
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]

Click Flight Button
    Click Element                    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Choose Flexible Date Button
    Click Element                    locator=//android.widget.CheckBox[@resource-id="com.example.myapplication:id/checkBoxDay"]

Click Book Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]      
