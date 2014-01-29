############ Objective: Subset a smaller set of data from comprehensive GSS dataset
############ for in-group favoritism analysis and save the data separately




############ Clear and set up a new work directory
rm(list=ls())
getwd()
setwd('/Users/hawooksong/Desktop/programming_projects/GSS/inGroupFavoritism')
# setwd('C:/Users/Desk 1/Desktop/GSS/inGroupFavoritism')




############ Load full GSS data
GSSdata <- read.csv('../data/GSS_data.csv', header=T, sep=',')
names(GSSdata)




############ Overview of GSS data
head(GSSdata)
str(GSSdata)
names(GSSdata)
dim(GSSdata)




############ Subset data for in-group favoritism analysis, rename columns, and  un-load
############ comprehensive GSS dataset

###### subsetting relevant data
data <- GSSdata[, c(1:5, 77:79, 105:109)]

###### renaming columns
names(data)
names(data) <- c('SurveyYear', 'Age', 'Sex', 'RaceOrg', 'RaceCensus', 'HousingDisc', 
                 'AffActBlack1', 'AffActBlack2', 'GovtHelpBlack', 'AffActWomen', 
                 'JobPrefWomen', 'JobPrefMen', 'AffActWomenPastDisc')

###### removing the complete GSS dataset
rm(list='GSSdata')




############ Ensuring the quality of subsetted data
head(data)
dim(data)
str(data)




############ Exporting subsetted data
save(data, file='/Users/hawooksong/Desktop/programming_projects/GSS/inGroupFavoritism/data/data.RData')
# save(data, file='C:/Users/Desk 1/Desktop/GSS/inGroupFavoritism/data/data.RData')
