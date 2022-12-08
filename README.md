Software Requirements Specification
For
Ocean Filter - Water Refilling Management System
Version 1.0
Prepared by: Furqan Fazal (20K-1703)
Muhammad Huzaifa (20K-0257)
Aliyan (20K-1098)
FAST - NUCES
4th December 2022
 
Table of Contents
Table of Contents	ii
1.	Introduction	3
1.1	Purpose	3
1.2	Intended Audience and Reading Suggestions	3
1.3	Product Scope	3
2.	Overall Description	4
2.1	Product Perspective	4
2.2	Product Functions	4
2.3	User Classes and Characteristics	4
2.4	Operating Environment	5
3.	External Interface Requirements	5
3.1	User Interfaces	5
3.2	Hardware Interfaces	6
3.3	Software Interfaces	6
4.	System Features	6
4.1	User End Features	6
4.2	Staff End Features	7
5.	Other Nonfunctional Requirements	7
5.1	Availability	7
5.2	Correctness	8
5.3	Maintainability	8
5.4	Usability	8
5.5	Security	8


















1. Introduction
1.1 Purpose
In recent years, the demand for water refilling stations has increased to a great extent, to cope with this demand, efficiency has become an important prospect which is why the need for an inventory management system for refilling stations has prominently increased. The customers of this system are the owners of water refilling sites who monitor the outgoing resources daily with their payments and the users who need to order. 
The general purpose of this system is to overcome the difficulties in manual operation in refilling stations. These often cause efficiency issues in services for the clients including records being misplaced at times. In addition, it also allows the customers and users to order their water containers with ease through online procedures along with keeping a record of their payments and sent orders without having to face any manual troubles as everything is automated.

1.2 Intended Audience and Reading Suggestion
This software product is intended for those of general public who occasionally or regularly order their water containers from different RO plants. Along with these, the project also covers the needs of the owners and admin staff teams of these plants who have to manage their stock going out towards the public as the software eases down their workload and makes it possible for them to be able to check statistics regarding profits earned and outgoing stock with ease.

1.3 Product Scope

This product aims to deliver the options to track the data regarding how many water containers have been delivered along with their payment. The system will be responsible for maintaining proper records of client location, transaction date, delivery schedule, contact information, employee details, and providing payment methods. The system also views information about the availability of the product and will provide the options to customers to add the products they intend to buy in their cart once they have successfully logged in and provided their details when they sign up.

2.0 Overall Description
2.1 Product Perspective

The project is aimed to take around a couple of months to be implemented and developed from scratch instead of being an extension of another project however it will use third-party applications for the payment system. 
The product is to be implemented with two main modules where first module is for the users that needs to order their water containers while the other module has to be of the Admin and staff where they can keep record of the total sales, transaction and employee details.

2.2 Product Functions
The user will be able to login, search the available items and add these to their cart along with provision of options regarding increasing and decreasing the quantities and will be able to view the respective bill that is generated. The user will then be assigned an order ID and he can continue to either add more items to the cart or log out.

The admin can view all kinds of details including the product details, employee details, profit details and will be able to edit or update any of these. The admin has full authority to delete or replace any product or update its quantity whenever required.
Individual details regarding these functions can be found in section 4: Features.


2.3 User Classes and Characteristics
The system will provide support to two main user classes that the product focusses on, which are customers and staff team.
Customers will have access to functions including signing up, logging in, adding products to cart, confirm order and make payment.
Admin or Staff team will have access to functions such as Adding, updating and deleting any product or employee details. The staff team will also be able to access the dashboard to find out statistics and information regarding the total sales.
2.4 Operating Environment
Operating environment for this Water Refilling Management System is as listed below
•	Client – Server System
•	Operating System: Windows
•	Database: SQL – Oracle Database
•	Platform : Jsp – Eclipse

3. External Interface Requirements
3.1 User Interfaces
Front End Technology used: Jsp using Eclipse IDE.
The prototype on which the system will be based will be as followed:
 

General Button Displays and Error message will follow the following prototype:
 
 

3.2 Hardware Interfaces
The users must have all the facilities required in order to run a Windows based Operating System on their System which is when they can use this software.

3.3 Software Interfaces

This software product will be using several other software’s dependencies in order to function properly and be connected to the Oracle Database.
The software developed will be using dependencies such as javax.servlet API , mysql Connector and Ojdbc.jar files.

4. System Features
4.1 User’s End Features
4.1.1 
Sign Up and Login: The users will be able to provide relevant details and be able to sign up on the home page. Furthermore, they can use the same ID and Password to then log in to their account for making purchases.

4.1.2
Search Item: The Users will be able to search and browse through the available Items that are added by the admin. This can be done through the provided search bar which will yield the item results.
4.1.3 
Adding products to their Carts: The users will be able to add the water container products that they want to buy to the carts. This will save the information of their selected products which they can add or remove ahead.

4.1.4 Quantity Upgrade: The users will have full authority to increase or decrease the quantity of the products with ease through a simple + and – Button which will help them set up correct quantity of their selected product.

4.1.5 Keeping track of prices and payments done: Users will be able to check the prices of different quantity of water containers available. They will also be able to check the payments that are needed to be done as automated bill that is generated can be accessed. 
4.1.6 Receive an Order Id: Once a customer have added items to cart and confirmed their order, the will be showed an Order ID which they can further use to find relevant details about their delivery.
4.2 Staff’s/Owners End Features
4.2.1 Keeping track of Payments and Profits.
4.2.2 Managing Employee Details which includes Adding, Updating or removing the details of any Employee
4.2.3 Updating Status such as updating the availability or unavailability of Employees.
4.2.4 Receive orders and making changes accordingly.
4.2.5 Checking User’s information and making relevant decisions by information extracted from the Database System.
4.2.6 Retrieving data regarding transactions: The Staff team will be able to search the transactions to get meaningful information.
4.2.7 Updating Available stock details: Removing the non-available resources and updating newly available stocks along with changing product descriptions and Items.

5. Other Non-Functional Requirements
5.1 Availability: The system should show relevant messages to the users in case a product is unavailable, an error message must appear instead of moving to the next page. If the product is not available, the system needs to behave in a different way unlike the normal circumstances.
5.2 Correctness: The system must store all kinds of details correctly and show exactly what the database stores (which should be recently updated) so that only the most recent and correct details are used to perform processing.
5.3 Maintainability: The admin and staff team must maintain the product records and update them regularly so that the users can stay up to date with regard to product availability.
5.4 Usability: The software must be easy to use with the provision of a friendly user interface so that a user does not needs much time getting used to with the interface and hence can easily order the product.

5.5 Security: Separate sessions need to be maintained so sign up and login processes are secure and only authentic ids can log in as per their set passwords.
