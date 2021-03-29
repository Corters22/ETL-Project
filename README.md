<hr>
<img src="Images/IMDb_Header.jpg" class="center">
<p><h1>Courtney Gomez  |  Lisa Harrell  |  Carlos Quiroz  |  Gerald Watts III </h1></p>
<hr>

## INTRODUCTION

The goal of this project is to illustrate Extract Transform Load (ETL) using Excel, Python and SQL.  ETL is a process commonly done in computing, which takes raw data, cleans it and stores it for later use.  The extraction phase targets and retrieves the data.  Transform manipulates and cleans the data. Then load stores the data, typically in a data warehouse. After ETL is completed, the data can be used for analytics to help achieve business objectives.  
<hr>

## MAIN OBJECTIVES
<ul>
    <li>Collect data  from various maintained sources </li>
    <li>Perform cleaning, merging, filtering, normalization and aggregations of all the data being used</li>
    <li>Ppload the files in a database in preparation for more thorough analysis</li>
    <li>Formulate ideas on what types of questions or analyses can be drawn from the datasets</li>
</ul>
<hr>

## DATA SOURCES AND DESCRIPTIONS
<ul>
<li>We obtained 3 data files from https://www.kaggle.com </li>
    <ul>
    <li>IMDb movies.csv</li>
    <li>IMDb names.csv</li>
    <li>IMDb title_principles.csv</li>
</ul>
<hr>

## DATA EXTRACTION
For the data extraction phase, we took data from 3 sources and converted them to csv files.  In Jupyter Notebook, the data was imported by using the csv module which can read csv data.  The file paths were saved and the module can import data by connecting through the file path locations.  We developed the design of our database using quickdatabasediagrams.com.  On this website, you can name tables and columns and assign data types for your database.  Each table has a primary key and we linked the tables together using primary and foreign keys.  After the schema was designed, we exported the file and uploaded it into PGAdmin to create the structure of the database.

## DATA TRANSFORMATION
During the transformation phase, we performed various data cleaning tactics to get the data clean before loading into the database.  

## DATA LOADING
To execute the load phase, a connection was created between the Jupyter Notebook and PGAdmin.  We also imported SQLAlchemy, which is a Python module that enables you to connect the two applications.  The file path of the database was saved and an "engine" was created to form the connection.  Finally, the tables that were previously built are inserted into the database using the insert command, which completes the ETL process.
