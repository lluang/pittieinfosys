# Information Systems Course

This repository is for creating resources used to teach a new version of the University of Pittsburgh IE0015 Information Systems Engineering course.  The course is intended to teach undergraduate engineers (2nd semester sophomores) the basics of working with data.  There are three components to this course.

1.  Databases
2.  Exploratory data analysis
3.  Data manipulation

## Resources

###  Books

The following are resources we will use.  Data Manipulation with R will be the primary text because that presents information in a way different than all other sources.

1.  Using SQLite
  -  http://shop.oreilly.com/product/9780596521196.do (get through Pitt Library)
2.  GGplot2 book by Hadley Wickham
  -  Chapter 2 qplot at http://ggplot2.org/book/qplot.pdf
3.  Data Manipulation with R - Spector (textbook)
4.  Gelman et al. Data Analysis Using Regression and Multilevel/Hierarchical Models Ch 25
  -  http://www.stat.columbia.edu/~gelman/arm/missing.pdf

### Datasets

For lectures and lab (module) examples, use this data set.  See the data directory for instructions.  The first module should involve assembling this data set.  For ideas on how to work with this data set, see the book Think Stats by Allen Downey

http://greenteapress.com/thinkstats2/

1.  National Survey of Family Growth http://cdc.gov/nchs/nsfg.htm
  -  Codebook http://www.cdc.gov/nchs/nsfg/nsfg_cycle6.htm

#  Git and Bitbucket

To use this repository, you need R and R Studio, then the version control system Git (which works with Bitbucket)

##  Git Version Control

-  Bitbucket sourcecode repository.
http://bitbucket.org

-  Git Distributed Version Control System
http://git-scm.com/

-  Pro Git Book. ISBN: 1430218339  Available electronically for free.  First chapter is on basics.
http://git-scm.com/book

-  GotGit  Adaptation of Pro Git in Chinese http://www.worldhello.net/gotgit/


-  Git and R Studio
https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN

-  SourceTree Git Client for Mac and Windows with graphical interface.  Use if RStudio support is not enough.
http://www.sourcetreeapp.com/

#  Modules

For modules, you should have an R Presentation that walks students through these topics using data in the national survey of family growth (female pregnancy data).  It may be useful to look at Think Stats for ideas on what the survey contains

1.  Module 1:  Using MS Access
2.  Module 2:  Reading data into R from SQL datatables.  Based on Spector Ch 2 - **Ziyi Kang**
3.  Module 3:  Using SQL and basic SQL query functions
4.  Module 4: Data formats Spector Ch 4, 5
5.  Module 5: Data formats Spector Ch 6, 7
6.  Module 6: Summarizing data (plyr)  **Yuwen Yang**
7.  Module 7:  Simple graphs with ggplot2 (qplot) **Shi Tang**
8.  Modele 8:  Complex graphs with ggplot2 (qplot) **Shi Tang**
9.  Module 9:  Data manipulation with dplyr (based on dplyr tutorials)
10. Module 10:  Pivot tables and aggregations with table and reshape
11. Module 11:  Identifying and marking missing values - Development of algorithms - flow charts **Saurabh Jha**
12. Module 12:  Missing values imputation kNN **Saurabh Jha**
13/ Module 13:  Missing values imputation with linear regression **Saurabh Jha**

#  Syllabus

## Introduction to Data

Spector - Ch 1

##  Databases

Module 1:  Using MS Access
    Load tables from CSV
    Reading table specifications to create column headings
    Join tables
    Select queries

Alternative: Use SQLite manager to do the same

Spector Ch 2

Module 2:  Reading data into R from SQL datatables.  Based on Spector Ch 2

-  Reading data into R from
    -  SQL databases
    -  Excel spreadsheets
    -  csv files
    -  Other text files
    -  json

Spector Ch 3

Module3:  Using SQL and basic SQL query functions

-  SQL
    -  SELECT
    -  GROUP BY
    -  JOIN
    -  SUBQUERY
    -  UPDATE

##  Data formats

Module 4, 5
    -  Using R to manipulate various data formats
    -  Summarizing data

Spector 4, 5, 6, 7

-  Numbers
-  Date time
-  Factors
-  Character data
-  R Data.Frame
-  Subscripting

##  Exploratory data analysis

Module 6:  summarizing data
  Basic summary statistics. Mean, variance, quantiles, box and whiskers

##  Graphical data analysis - ggplot2

Module 7:  Simple graphs with ggplot2 (qplot)

Modele 8:  Complex graphs with ggplot2 (qplot)

Wickham Ch 1

-  qplot plots

##  Data manipulation

Module 9:  Data manipulation with dplyr

Reference needed
select, filter, mutate, summarize, arrange. using dplyr

Module 10:  Pivot tables and aggregations with table and reshape

Spector 8 and 9
-  Aggregating   using table
-  PIvot tables using reshape
-  Merging data frames

##  Missing values

Module 11:  Identifying and marking missing values - Development of algorithms - diagramming

Module 12:  Missing values imputation kNN

Module 13:  Missing values imputation with linear regression

-  reference material
Gelman et al. Data Analysis Using Regression and Multilevel/Hierarchical Models Ch 25
http://www.stat.columbia.edu/~gelman/arm/missing.pdf


## Syllabus

1.  Databases
	-  Relational databases
	-  SQL (select, group by, join, update)
	-  Introduction to MS Access
	-  Introduction to ODBC/JDBC (using SQLite as a representative of commonly encountered databases)

2.  Data, data manipulation, and Programming (probably either R/Python)
	-  Programming and using an Integrated Development Environment
	-  Data types (numerical, character, arrays, matrices, data frames/tables)
	-  Reading in data (text, spreadsheets, databases)
	-  Dealing with various data types (date/time, text, factors)
	-  Reshaping data (select, filter, transform, summarize, arrange)
	-  Merging data
	-  Dealing with missing values, data errors, outliers, etc.

3.  Exploratory data analysis (EDA)
	-  Summarizing data
	-  Graphical data exploration
	-  Communicating results of EDA

4.  Algorithm development
        -  Missing values
        -  kNN

## Materials

This will depend on the programming language/analytical environment (top candidates are Python and R based on industry and data analytics practice.
	- Required text - Focuses on data manipulation and data exploration
	- Secondary texts - Databases, EDA (graphics). Check for free electronic availability through Pitt Library
	- Tutorials - Technical articles and tutorials freely available that focus on specific topics in the syllabus.
	- Periodicals - Discussion of articles from current news that involve data analysis and its presentation

## ABET Outcomes

a. an ability to apply knowledge of mathematics, science, and engineering;
b. an ability to design and conduct experiments, as well as to analyze and interpret data;
e. an ability to identify, formulate, and solve engineering problems;g. an ability to communicate effectively;
k. an ability to use the techniques, skills, and modern engineering tools necessary for engineering practice.

And as a side effect of the discussions of current news examples of data analysis and technical papers/tutorials

f. an understanding of professional and ethical responsibility;
h. the broad education necessary to understand the impact of engineering solutions in a global, economic, environmental, and societal context;
i. a recognition of the need for, and an ability to engage in life-long learning;read