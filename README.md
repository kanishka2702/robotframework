# Project Title

This projects for practicing ROBOTFRAMEWORK automation with Pycharm


#For dataDriven Testing with Excel and Csv we need to install Below Library in Python Environment variable

***Robotframework-data***

#For data driven excel you need to run this command to install EXCEL <B>pip install -U robotframework-datadriver[XLS]</B>

***How run test cases sequentially through command line/Terminal in project directory/Folder***
robot TestCases1\  --->This will all the test cases inside the folder name TestCases1,<B>Test case execution one by one NOT Parallelly</B>
robot TestCases1\*.robot--->This will all the test cases inside the folder name TestCases1,<B>Test case execution one by one NOT Parallelly</B> 
robot TestCases1\Reg*.robot --->with Regular expressions, Test case which include Reg

***How to Run test cases Parallelly using robotframework-pabot***
pip install -U robotframework-pabot
Website nam:-https://pypi.org/project/robotframework-pabot/
Run this command in terminal project directory/Folder
 pabot --processes 2 TestCases1\*.robot --->2 represent how many number of test cases we want to run

***How to Run test cases using BAT file Parallelly using robotframework-pabot***
pabot --processes 3 --outputdir Results1 TestCases1\*.robot  --->outputdir Results1 will create new folder Results1 in project directory


***Run through batch(.bat) file***
create file in project with extension .bat
install all required plugins recommended by IDE(Pycharm,vs code etc)
save below content in .bat file
cd C:\Users\admin\PycharmProjects\robotframework
pabot --processes 3 --outputdir Results1 TestCases1\*.robot
