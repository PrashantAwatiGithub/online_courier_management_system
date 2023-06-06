create schema online_courier;
use online_courier;

DROP TABLE user_signup;
create table User_signup
(
user_id int primary key auto_increment,
fname nvarchar(50),
lname nvarchar(50),
dob nvarchar(50),
mob nvarchar(50),
email nvarchar(50),
pass nvarchar(50),
conf nvarchar(50)
);


DROP TABLE user_tracking;
create table user_tracking
(id int primary key auto_increment,
user_id int,
consignmentno nvarchar(50)


);

DROP TABLE user_reciver_information;
create table user_reciver_information
(
id int primary key auto_increment,
user_id int,
fname nvarchar(100),
mob nvarchar(50),
email nvarchar(50),
address nvarchar(100),
city nvarchar(50),
state nvarchar(50),
country nvarchar(50),
pincode nvarchar(50)
);

DROP TABLE user_feedback;
create table user_feedback
(
id int primary key auto_increment,
user_id int,
cname nvarchar(100),
email nvarchar (50),
feedback nvarchar(500)
);


DROP TABLE user_courier_information;
create table user_courier_information(
id int primary key auto_increment,
user_id int,
consignmentno nvarchar(50),
deliveredid nvarchar(50),
bookingdate nvarchar(50),
bookingmode nvarchar(50),
weight nvarchar(50),
quantity nvarchar(50),
parceltype nvarchar(100),
price nvarchar(50)
);

DROP TABLE user_forgot_password;
create table  user_forgot_password(
id int primary key auto_increment,
admin_id int,
uname nvarchar(100),
newpass nvarchar(100),
confirmpass nvarchar(100)


);

DROP TABLE user_payment;
create table user_payment(
id int primary key auto_increment,
user_id int,
pmode nvarchar(50),
quantity nvarchar(50),
price nvarchar(50),
tax nvarchar(50),
amount nvarchar(50)
);

create table user_login(

email nvarchar(100),
pass nvarchar(50)
);


DROP TABLE branch_tracking;
create table branch_tracking(
id int primary key auto_increment,
branch_id int,
conssignmentno nvarchar(50)
);

create table branch_login(
emailid nvarchar(100),
password nvarchar(50)
);

DROP TABLE  branch_courier_details;
create table branch_courier_details(
id int primary key auto_increment,
branch_id int,
sendername nvarchar(100),
recivername nvarchar(100),
recivercontact nvarchar(50),
reciveraddress nvarchar(100),
pincode nvarchar(50),
couriertype nvarchar(100),
weight nvarchar (50),
quantity nvarchar(50)
);

DROP TABLE admin_tracking;
create table admin_tracking(
id int primary key auto_increment,
admin_id int,
conssignmentno nvarchar(50)


);

DROP TABLE admin_login;
create table admin_login(
email nvarchar(100),
pass nvarchar(50)
);

DROP TABLE admin_forgot_password;
create table  admin_forgot_password(
id int primary key auto_increment,
admin_id int,
uname nvarchar(100),
newpass nvarchar(100),
confirmpass nvarchar(100)


);

drop table admin_signup;
create table admin_signup(
admin_id int primary key auto_increment,
fristname nvarchar(50),admin_signup
lastname nvarchar(50),
dateofbirth nvarchar(50),
mobileno nvarchar(50),
emailid nvarchar(50),
passaword nvarchar(50),
confirm_password nvarchar(50)
);


DROP TABLE admin_courier_details;
create table admin_courier_details(
id int primary key auto_increment,
admin_id int,
sname nvarchar(100),
rname nvarchar(100),
rcontact nvarchar(50),
raddress nvarchar(100),
pincode nvarchar (50),
ctype nvarchar(50),
weight nvarchar(50),
quantity nvarchar(50)
);


DROP TABLE admin_add_branch;
create table admin_add_branch(
id int primary key auto_increment,
admin_id int, 
branchname nvarchar(50),
address nvarchar(50),
city nvarchar(50),
phoneno nvarchar(50),
pass nvarchar(50)
);


DROP TABLE user_courier_information;
create table tracking(
id int primary key auto_increment,
consignmentno nvarchar(50),
bookingdate nvarchar(50),
bookingmode nvarchar(50),
weight nvarchar(50),
quantity nvarchar(50),
parceltype nvarchar(100),
price nvarchar(50),
branchid nvarchar(50)
);

