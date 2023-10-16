# 📀 DVD Rental PostgreSQL Project 📀
<p align="center">
  <img src="https://github.com/samruddhijp05/dvd_rental_sql_queries/blob/queries/dvd.PNG" alt="Image" width="600">
</p>

## 📚 Introduction
Welcome to the DVD Rental Database Project, an immersive hands-on experience that delves into the depths of PostgreSQL, the robust open-source object-relational database system. 📚

This project contains 15 tables: 'actor', 'film', 'film_actor', 'category', 'film_category', 'store', 'inventory', 'rental', 'payment', 'staff', 'customer', 'address', 'city', and 'country'. Each of these tables serves a comprehensive pciture of the multifaceted  world of a DVD rental business. 📈

As you navigate through this project, you'll gain practical insights into the capabilities of PostgreSQL, enhance your database management skills, and understand complex data structures and relationships. Welcome to a learning journey that unravels the intricate operations of a DVD rental store. 🌐

## 🎯 Objective
- Implement SQL queries on the rental database to discover the data and generate insights .
- Utilize PostgreSQL database system for managing and interacting with the data.
- Leverage Git commands for version control and effective collaboration.
- Maintain extensive project documentation and a well-structured code repository here on GitHub.


## 🔧 Tool
- PostgreSQL (Version: 15.3)
- Git (Version: 2.23.0)
- PgAdmin 6.3

## 📊 DVD Rental ER Model
<p align="center">
  <img src="https://github.com/samruddhijp05/dvd_rental_sql_queries/blob/queries/ER_diagram.PNG" alt="Image" width="500">
</p>

## 📃 DVD Rental Database Tables
There are 15 tables in the DVD Rental database:

- film – This table stores film data such as title, release year, length, rating, etc.
- film_actor – This table stores the relationships between films and actors.
- category – This table stores film’s categories data.
- actor – This table includes actors data including first name and last name.
- film_category- This table contains the relationships between films and categories.
- store – This table contains the store data including manager staff and address.
- inventory – This table has inventory data.
- rental – This table has rental data.
- payment – stores customer’s payments.
- staff – stores staff data.
- customer – This table includes customer data.
- address – This table stores address data for staff and customers
- city – This table stores city names.
- country – This table has country names information.

## 🌐 Dataset
- [Link](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/) ; or
- [Download Here](https://github.com/samruddhijp05/dvd_rental_sql_queries/tree/queries/databasefile)
  

📝 To restore a .tar file in pgAdmin, follow these steps:
```
This process assumes you already have PostgreSQL and pgAdmin installed on your system. Here's a more detailed explanation of each step:

1.Convert the .zip file to a .tar file:
Use a compression tool like 7-Zip or WinRAR to extract the contents of the dvdrental.zip file.
Once the contents are extracted, create a new archive and save it as dvdrental.tar.

2.Open pgAdmin and connect to your PostgreSQL server:
Open pgAdmin, and in the left column, locate the "Servers" group.
Expand the server you want to restore the dvdrental.tar file to. You may need to provide server credentials if required.

3.Locate the Databases option:
Right-click on the "Databases" option under the server and select "Restore..." from the context menu.

4.Navigate to the location of the .tar file:
In the "Restore" dialog box, navigate to the location where you have the dvdrental.tar file saved.
Select the file and click "OK" or "Open" to begin the restore process.

5.Configure the restore options:
You'll have various options to configure, depending on your requirements. These options may include:
  Specifying the target database where you want to restore the data.
  Choosing whether to drop existing objects in the target database or not. Be careful with this option, as it can result in data loss if not used correctly.
  Setting the format to "Custom or Tar" since you're using a .tar file.
  Adjusting other options based on your specific needs.

6.Initiate the restore process:
Once you've configured the options, click the "Restore" button. pgAdmin will read the dvdrental.tar file and start the restore process.

7.Monitor the restore process:
You may see a progress bar or messages indicating the progress of the restore process. This can take some time depending on the size of the database.

8.Check for a successful restore:
Once the restore process is complete, you should receive a success message indicating that the restore was successful. You should now have the dvdrental database available for use in your PostgreSQL server.

Remember to make sure you have the necessary permissions and backups before performing any database restores, as it can potentially overwrite or modify existing data in your PostgreSQL database.

👥 Contributer
- (https://github.com/samruddhijp05)