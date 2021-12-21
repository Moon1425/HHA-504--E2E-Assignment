# HHA 504: E2E Assignment (HOW-TO-FILE)
 
###Setup and deploy EC2 Launch Azure Virtual Machine:

Use Ubuntu Gen1 (20.4)
Create a username and password
Proceed to the Network Tab, then click Add Inbound Rule for MySQL and add port 3306.
Review configuration settings and Create the Virtual Machine


###Connect to Virtual Machine via Terminal

Open Windows Terminal and connect to VM with the following Command: ssh Moon1425@20.127.114.137 (Username and password for IP address can be found under the Overview tab on Azure.
Will be Pompt to enter password. Password: Production-15, then type yes to the following prompt
Perform an update to the UBUNTU server using the following command: sudo apt-get update


###Installing MySQL to terminal
install MySQL using the following command: sudo apt-get mysql-client mysql-server, then type Yes and select Enter
to enter the mysql server use command: sudo mysql

###Install MySQL Client and Server
use command: sudo apt-get install mysql client mysql server

###Creating a New User
Command: create user 'DBA'@'%.example.com;

###Grant new user replication
Command: grant replication slave on *.* to 'DBA'@'%.example.com;

###Creating a new database
Command: create database 'database_name'; example: create database e2e;

###To display available databases 
Command: SHOW DATABASES;

###Selecting a particular database
Command: use database 'database_name'; (example: use database e2e;)

###Flushing tables with read lock
Command: flush tables with read lock;

###Show status of master database
Command: show master status;

###Creating a SQL file called "e2e"
Command: sudo mysqldump --opt e2e > e2e.sql

###Display SQL files
Command: ls

###Unlocking tables
Command: unlock tables;

###Existing MySQL Server
Command: quit;

###Update SQL configurations to ensure python code works
Command: sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
Edit and Update blind-address to 0.0.0.0
Select Ctrl + O to save changes and Ctrl + X to exit configurations menu

###Restarting mysql 
Command: /etc/init.d/mysql restart

###Create a dump (.sql) file
Command: sudo mysqldump e2e > backup_e2e.sql then type 'ls' – to confirm changes made

###Using the SCP command from your terminal and transport that file to your local computer
Next: Launch AZURE to create a replica instance IP Address for replica In current terminal (Primary e2e) using the scp terminal command: scp backup_e2e.sql replica@52.179.23.94:/home/replica

###Creating a trigger

Refer to the sql file HHA_504_Trigger_final.sql
