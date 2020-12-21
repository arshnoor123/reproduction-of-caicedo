# Overview

This repo has code and data for the reproduction of 'Human Capital Transmission, Economic Persistance and Culture in South America' by Felipe Valencia Caicedo. Created by Arshnoor Gill as the author, the purpose is writing a report which investigates the linear models for the distance from a mission site and literacy/income levels, taking into account geographical information. The data does not belong to me so it is not shared here in this project, but it is easily accessible according to the instructions below.

The main sections of this report is:
- The inputs folder. Inside the inputs folder, you should download the data from https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ML1155 and store the folder `Data` directly inside the `Inputs` folder.
- The `Outputs` folder, which contains the output of the linear regression model information.
- The `Scripts` folder, which creates the output CSV files.


The outputs folder has files modified from the inputs as well as supporting detail and the report itself. Included are:

-  `report.Rmd` is the RMarkdown code for the report. Make sure to run the scripts before knitting this document.
- `report.pdf` is the pdf output of the report.

The scripts inside the script folder, which use the inputs to create files that can be utilized in the report, are:

- `01_data_cleaning-and-modelling.R`