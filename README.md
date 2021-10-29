# ETL Project – Technical Report #
Project completed by analysts Huma Chaudry, Catherine Ting, Samir Barua and Ben Pickles

The program will deliver a database enabling the comparison of school leaver destinations, whether that be further tertiary education or employment, with the relative wealth of that local government area (LGA); in this case characterised by median income. By linking school postcodes with the relevant LGA, we are able to form a connection between these two data sources which enables further exploration and comparison of these combined data sources.

The following process was undertaken to complete the ETL of this database. 


<h3>Extract:</h3>

The following four CSV’s were extracted from sources as defined below. Please refer to the Raw Data folder for these documents. 
1.	DestinationData2020.csv - Department of Education and Training https://www.education.vic.gov.au/about/research/pages/ontrack.aspx?Redirect=1

2.	dv279-schoollocations2019.csv - Department of Education and Training www.education.vic.gov.au/Documents/about/research/datavic/dv279-schoollocations2019.csv
3.	Australian LGA postcode mappings (2011 data).xlsx - Australian Bureau of Statistics https://www.abs.gov.au/AUSSTATS/abs@.nsf/DetailsPage/1270.0.55.003July%202019?OpenDocument
4.	salary.csv - Australian Bureau of Statistics https://www.abs.gov.au/statistics/labour/earnings-and-work-hours/personal-income-australia/latest-release

<h3>Transform:</h3>
We have pre-processed data to make it load ready, as detailed below:

<h4>1.	DestinationData</h4>
-Data is preprocesses via <b>DataPreProcessing.ipynb</b></br>
  -	The unnecessary top 3 rows were dropped</br>
  -	Columns were relabeled appropriately</br>
  -	Unnecessary columns were dropped, as were rows at the top and bottom of the dataset which aren’t required (further headings and footnotes in csv)</br>
  -	Duplicate school names were dropped, keeping only the first school by that name</br>
  -	The cleaned dataframe was saved as a new csv</br>

<h4>2.	Salary</h4>
-Data is preprocesses via <b>DataPreProcessingSalary.ipynb</b></br>
   -	Unnecessary rows at the top were removed and the 5th row was converted to the column headings. This row was then dropped. </br>
   -	Columns that were not required were removed by filtering to just the required columns</br>
   -	NA values were dropped</br>
   -	Columns were re-named and the index reset</br>
   -	The cleaned dataframe was saved as a new csv</br>

<h4>3.	LGA Postcode mappings</h4>
-Data is preprocesses via <b>DataPreprocessingPostCodeLGA.ipynb</b></br>
   -	Columns were re labelled</br>
   -	NA values were dropped</br>
   -	Duplicates were dropped</br>

<h3>Load</h3>
  
Once the transformed csv’s were created, a database and the corresponding tables with the required columns were created using SQL in pgAdmin, after developing and mapping out the table schema. Confirmed data has been added by querying the customer_name table using `pd.read_sql_query('select * from customer_name', con=engine).head()`

![picture alt]![image](https://user-images.githubusercontent.com/23230497/139362931-5f2d73df-3e30-4d26-805a-740607174b21.png)

Attempts were subsequently made to join the loaded tables within the dataframe. However further work is required to execute this successfully. 

The final database does contain the necessary information to compare school leaver outcomes with the median salaries of their respective LGA's. 
