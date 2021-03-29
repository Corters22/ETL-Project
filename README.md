# IMDb ETL-Challenge

## **INTRODUCTION**

The goal of this project is to illustrate Extract Transform Load (ETL) using Excel, Python and SQL.  ETL is a process commonly done in computing, which takes raw data, cleans it and stores it for later use.  The extraction phase targets and retrieves the data.  Transform manipulates and cleans the data. Then load stores the data, typically in a data warehouse. After ETL is completed, the data can be used for analytics to help achieve business objectives.  

Our team decided to use IMDB data for the project.  We chose compensation because it's a common topic that the average person can understand and thought it would be interesting to compare ??????

## **DATA**

We obtained data from https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset?select=IMDb+title_principals.csv. 



## **EXTRACT**
For the data extraction phase, we took data from 3 sources and converted them to csv files.  In Jupyter Notebook, the data was imported by using the csv module which can read csv data.  The file paths were saved and the module can import data by connecting through the file path locations.  We developed the design of our database using quickdatabasediagrams.com.  On this website, you can name tables and columns and assign data types for your database.  Each table has a primary key and we linked the tables together using primary and foreign keys.  After the schema was designed, we exported the file and uploaded it into PGAdmin to create the structure of the database.

## **TRANSFORM**
During the transformation phase, we performed various data cleaning tactics to get the data clean before loading into the database.  

## **LOAD**
To execute the load phase, a connection was created between the Jupyter Notebook and PGAdmin.  We also imported SQLAlchemy, which is a Python module that enables you to connect the two applications.  The file path of the database was saved and an "engine" was created to form the connection.  Finally, the tables that were previously built are inserted into the database using the insert command, which completes the ETL process.
