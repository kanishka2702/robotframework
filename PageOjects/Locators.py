#login page elements
txt_LoginUserName="name:userName"
txt_LoginPassword="name:password"
btn_signIn="xpath://input[@name='submit']"
txt_logintext= "xpath://b[normalize-space()='Thank you for Loggin.']"
txt_Signoff="xpath://a[normalize-space()='SIGN-OFF']"

#Registry page elements
register_link="link:REGISTER"
txt_firstname="name:firstName"
txt_lastname="name:lastName"
txt_phone="name:phone"
txt_email="xpath://input[@id='userName']"
txt_address="name:address1"
txt_postalcode="name:postalCode"
txt_city="name:city"
txt_state="name:state"
dropdown_country="name:country"
txt_username_input="xpath://input[@id='email']"
txt_password_input="xpath://input[@name='password']"
txt_Confirm_password="xpath://input[@name='confirmPassword']"
button_submit="xpath://input[@name='submit']"

#Create element list in locators.py file only for robot framework
REGISTER_PAGE_ELEMENT_LIST= [txt_firstname,txt_lastname,txt_phone,txt_city,txt_state,txt_postalcode]
