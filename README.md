# ETL Project – Technical Report #
Project completed by analysts Huma Chaudry, Catherine Ting, Samir Barua and Ben Pickles

The program will deliver a database enabling the comparison of school leaver destinations, whether that be further tertiary education or employment, with the relative wealth of that local government area (LGA); in this case characterised by median income. By linking school postcodes with the relevant LGA, we are able to form a connection between these two data sources which enables further exploration and comparison of these combined data sources.

The following process was undertaken to complete the ETL of this database. 


<h3>Extract:</h3>

The following four CSV’s were extracted from sources as defined below. Please refer to the Resources folder for these documents. 
1.	DestinationData2020.csv - https://www.education.vic.gov.au/about/research/pages/ontrack.aspx?Redirect=1![ERD DRAFT 2]

2.	dv279-schoollocations2019.csv - www.education.vic.gov.au/Documents/about/research/datavic/dv279-schoollocations2019.csv
3.	Australian LGA postcode mappings (2011 data).xlsx - https://www.abs.gov.au/AUSSTATS/abs@.nsf/DetailsPage/1270.0.55.003July%202019?OpenDocument
4.	salary.csv - https://www.abs.gov.au/statistics/labour/earnings-and-work-hours/personal-income-australia/latest-release

<h3>Transform:</h3>

Pre-processing:
1.	DestinationData
  a.	The unnecessary top 3 rows were dropped
  b.	Columns were relabeled appropriately
  c.	Unnecessary columns were dropped, as were rows at the top and bottom of the dataset which aren’t required (further headings and footnotes in csv)
  d.	Duplicate school names were dropped, keeping only the first school by that name
e.	The cleaned dataframe was saved as a new csv

2.	Salary
  a.	Unnecessary rows at the top were removed and the 5th row was converted to the column headings. This row was then dropped. 
  b.	Columns that were not required were removed by filtering to just the required columns
  c.	NA values were dropped
  d.	Columns were re-named and the index reset
  e.	The cleaned dataframe was saved as a new csv

3.	LGA Postcode mappings
  a.	Columns were re labelled
  b.	NA values were dropped
  c.	Duplicates were dropped

<h3>Load</h3>
  
Once the transformed csv’s were created, a database and the corresponding tables with the required columns were created using SQL in pgAdmin, after developing and mapping out the table schema. 

![picture alt](https://user-images.githubusercontent.com/87689345/139240930-76bc3a1e-a4d2-431b-b72f-69f0e725e51b.png)


