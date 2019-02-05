# bookstore_aspNet
Fictitious bookstore website. It used some controls from ASP.NET + SQL database.

## GREENHOUSE BOOKSTORE website project was presented at ASP.NET class in the College as part of the course.

## OBJECTIVE 
Creating a website to a fictitious bookstore with pages to Sign In/Up, Search, and Administrator Area, using SQL database server.

## FEATURES

SIGN UP page:
* Four textbox controls used to get input from users: Username, Password, Confirm Password, and Zip Code.
  - It is required input to all textboxes
  - Password and Confirm Password must match
  - Zip Code must have five characteres
  - If a username already exists, it is displayed a message "Username already exists"
* One button control.

SIGN IN page:
To be redirected to other page, a user must have created an account before on the Sign Up. Once a user has an account, username and password inputs must match. If they match, the user is redirected to a other page. If they not match, a message error is displayed.

SEARCH PAGE: 
It has two types of searches. The search can be done by using a textbox control, where he/she can type full word or only partial word (few letters). Other type of search uses DropDownList control, where the user can choose an item using a drop down list. Both searches use GridView control to display items from database.

ADMINISTRATOR AREA:a
To access the administrator page, a user must have a special username/password. Once he/she inputs username/password, he/she is recdirectioned to administrator page where the data from database can be accessed to be be updated, deleted, and a new record can be inserted.
