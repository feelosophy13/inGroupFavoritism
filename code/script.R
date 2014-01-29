############ Objective: Analyze in-group favoritism




############ Setting working directory
getwd()
setwd('/Users/hawooksong/Desktop/programming_projects/GSS/inGroupFavoritism')
# setwd('C:/Users/Desk 1/Desktop/GSS/inGroupFavoritism')




############ Loading data and packages
###### loading packages
library(ggplot2)
library(psych)
library(car)
library(lsr)
library(gridExtra)
library(psych)

###### loading data
load('./data/data.RData')




############ Overview of subsetted data
dim(data)
names(data)
head(data)
str(data)




############ Checking for no missing value in "Sex" variable in the dataset
table(data$Sex)
unique(data$Sex)
'' %in% data$Sex
# no missing value; good




############ Saving missing value conditionals for different factors (columns)
valueMissingRaceCensus <- '' == data$RaceCensus
valueMissingHousingDisc <- '' == data$HousingDisc
valueMissingAffActBlack1 <- '' == data$AffActBlack1
valueMissingAffActBlack2 <- '' == data$AffActBlack2
valueMissingGovtHelpBlack <- is.na(data$GovtHelpBlack)
valueMissingAffActWomen <- '' == data$AffActWomen
valueMissingJobPrefWomen <- '' == data$JobPrefWomen
valueMissingJobPrefMen <- '' == data$JobPrefMen
valueMissingAffActWomenPastDisc <- '' == data$AffActWomenPastDisc




############ Re-ordering factor levels for the "Race" column
table(as.numeric(data$RaceCensus))
table(data$RaceCensus)

# '' coded as 1
# 'Asian' coded as 2
# 'Black or African American' coded as 3
# 'Hispanic (Any race)' coded as 4
# 'Other' coded as 5
# 'White' coded as 6

# re-ordering: White, Black, Hispanic, Asian, Other, and (Blank)
data$RaceCensus <- factor(data$RaceCensus, levels(data$RaceCensus)[c(6, 3, 4, 2, 5, 1)])




############ Re-ordering factor levels for the "AffActBlack1" column
table(as.numeric(data$AffActBlack1))
table(data$AffActBlack1)

# "" coded as 1
# "Don't Know" coded as 2
# "Oppose Preference for Blacks" coded as 3
# "Strongly Oppose Preference for Blacks" coded as 4
# "Strongly Support Preference for Blacks" coded as 5
# "Support Preference for Blacks" coded as 6

# re-ordering:
data$AffActBlack1 <- factor(data$AffActBlack1,
                            levels(data$AffActBlack1)[c(5, 6, 2, 3, 4, 1)])




############ Re-ordering factor levels for the "AffActBlack2" column
table(as.numeric(data$AffActBlack2))
table(data$AffActBlack2)

# "" coded as 1
# "Agree Somewhat" coded as 2
# "Agree Strongly" coded as 3
# "Disagree Somewhat" coded as 4
# "Disagree Strongly" coded as 5
# "Don't Know" coded as 6
# "Neither Agree Nor Disagree" coded as 7

# re-ordering
data$AffActBlack2 <- factor(data$AffActBlack2,
                            levels(data$AffActBlack2)[c(3, 2, 6, 7, 4, 5, 1)])




############ Re-ordering factor levels for the "AffActWomen" column
table(as.numeric(data$AffActWomen))
table(data$AffActWomen)

# "" coded as 1
# "Against" coded as 2
# "Don't Know" coded as 3
# "For" coded as 4
# "Strongly Against" coded as 5
# "Strongly For" coded as 6

# re-ordering
data$AffActWomen <- factor(data$AffActWomen,
                           levels(data$AffActWomen)[c(6, 4, 3, 2, 5, 1)])




############ Re-ordering factor levels for the "JobPrefWomen" and "JobPrefMen" columns
table(as.numeric(data$JobPrefWomen))
table(data$JobPrefWomen)

table(as.numeric(data$JobPrefMen))
table(data$JobPrefMen)

# "" coded as 1
# "Don't Know" coded as 2
# "Somewhat Likely" coded as 3
# "Somewhat Unlikely" coded as 4
# "Very Likely" coded as 5
# "Very Unlikely" coded as 6

# re-ordering
data$JobPrefWomen <- factor(data$JobPrefWomen,
                            levels(data$JobPrefWomen)[c(5, 3, 2, 4, 6, 1)])

data$JobPrefMen <- factor(data$JobPrefMen,
                          levels(data$JobPrefMen)[c(5, 3, 2, 4, 6, 1)])




############ Re-ordering factor levels for the "AffActWomenPastDisc" column
table(as.numeric(data$AffActWomenPastDisc))
table(data$AffActWomenPastDisc)

# "" coded as 1
# "Agree" coded as 2
# "Disagree" coded as 3
# "Don't Know" coded as 4
# "Neither Agree Nor Disagree" coded as 5
# "Strongly Agree" coded as 6
# "Strongly Disagree" coded as 7

# re-ordering
data$AffActWomenPastDisc <- factor(data$AffActWomenPastDisc,
                                   levels(data$AffActWomenPastDisc)[c(6, 2, 4, 5, 3, 7, 1)])




############ Opinion on Housing Discrimination by Race
valueMissingHousingDisc <- valueMissingRaceCensus | valueMissingHousingDisc
housingDiscData <- data[!valueMissingHousingDisc, 5:6]
housingDiscData$RaceCensus <- factor(housingDiscData$RaceCensus)
housingDiscData$HousingDisc <- factor(housingDiscData$HousingDisc)

tableHousingDisc <- table(housingDiscData$HousingDisc, housingDiscData$RaceCensus)
tableHousingDisc  # raw count
round(prop.table(tableHousingDisc, 2), 3)  # column percentages




############ Opinion on Affirmative Action for Blacks by Race I
valueMissingAffActBlack1 <- valueMissingRaceCensus | valueMissingAffActBlack1
affActBlack1Data <- data[!valueMissingAffActBlack1, c(5, 7)]
affActBlack1Data$RaceCensus <- factor(affActBlack1Data$RaceCensus)
affActBlack1Data$AffActBlack1 <- factor(affActBlack1Data$AffActBlack1)

tableAffActBlack1 <- table(affActBlack1Data$AffActBlack1, affActBlack1Data$RaceCensus)
tableAffActBlack1  # raw count
round(prop.table(tableAffActBlack1, 2), 3)  # column percentages




############ Opinion on Affirmative Action for Blacks by Race II
valueMissingAffActBlack2 <- valueMissingRaceCensus | valueMissingAffActBlack2
affActBlack2Data <- data[!valueMissingAffActBlack2, c(5, 8)]
affActBlack2Data$RaceCensus <- factor(affActBlack2Data$RaceCensus)
affActBlack2Data$AffActBlack2 <- factor(affActBlack2Data$AffActBlack2)

tabletableAffActBlack2 <- table(affActBlack2Data$AffActBlack2, affActBlack2Data$RaceCensus)
tabletableAffActBlack2  # raw count
round(prop.table(tabletableAffActBlack2, 2), 3)  # column percentages




############ Opinion on Government Help for Blacks by Race
valueMissingGovtHelpBlack <- valueMissingRaceCensus | valueMissingGovtHelpBlack
govtHelpBlackData <- data[!valueMissingGovtHelpBlack, c(5, 9)]
govtHelpBlackData$RaceCensus <- factor(govtHelpBlackData$RaceCensus)

tableGovtHelpBlack <- table(govtHelpBlackData$GovtHelpBlack, govtHelpBlackData$RaceCensus)
tableGovtHelpBlack  # raw count
round(prop.table(tableGovtHelpBlack, 2), 3)  # column percentages




############ Opinion on Affirmative Action Women by Gender I
affActWomenData <- data[!valueMissingAffActWomen, c(3, 10)]
affActWomenData$AffActWomen <- factor(affActWomenData$AffActWomen)

tableAffActWomen <- table(affActWomenData$AffActWomen, affActWomenData$Sex)
tableAffActWomen  # raw count
round(prop.table(tableAffActWomen, 2), 3)  # column percentages




############ Opinion on Affirmative Action Women by Gender II
affActWomenPastDiscData <- data[!valueMissingAffActWomenPastDisc, c(3, 13)]
affActWomenPastDiscData$AffActWomenPastDisc <- factor(affActWomenPastDiscData$AffActWomenPastDisc)

tableAffActWomenPastDiscData <- table(affActWomenPastDiscData$AffActWomenPastDisc, affActWomenPastDiscData$Sex)
tableAffActWomenPastDiscData  # raw count
round(prop.table(tableAffActWomenPastDiscData, 2), 3)  # column percentages




############ Perceived Job Preference for Women by Gender
jobPrefWomenData <- data[!valueMissingJobPrefWomen, c(3, 11)]
jobPrefWomenData$JobPrefWomen <- factor(jobPrefWomenData$JobPrefWomen)

tableJobPrefWomen <- table(jobPrefWomenData$JobPrefWomen, jobPrefWomenData$Sex)
tableJobPrefWomen  # raw count
round(prop.table(tableJobPrefWomen, 2), 3)  # column percentages




############ Perceived Job Preference for Men by Gender
jobPrefMenData <- data[!valueMissingJobPrefMen, c(3, 12)]
jobPrefMenData$JobPrefMen <- factor(jobPrefMenData$JobPrefMen)

tableJobPrefMen <- table(jobPrefMenData$JobPrefMen, jobPrefMenData$Sex)
tableJobPrefMen  # raw count
round(prop.table(tableJobPrefMen, 2), 3)  # column percentages

