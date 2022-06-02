############################################### Slide 1	
############################################### Slide 2	
############################################### Slide 3	
############################################### Slide 4	
# to load the package	
library(EdSurvey)	
sdf <- readNAEP(system.file("extdata/data", "M36NT2PM.dat",	
                            package = "NAEPprimer"))	
############################################### Slide 5	
############################################### Slide 6	
############################################### Slide 7	
summary2(sdf, "composite")	
############################################### Slide 8	
summary2(sdf, "composite", weightVar = NULL)	
############################################### Slide 9	
summary2(sdf, "b017451")	
############################################### Slide 10	
summary2(sdf, "b017451", omittedLevels = TRUE)	
############################################### Slide 11	
############################################### Slide 12	
es1 <- edsurveyTable(composite ~ dsex + b017451, data = sdf)	
library(knitr)	
library(kableExtra)	
kable(es1$data, format="html") %>%	
  kable_styling(font_size = 16) %>%	
  scroll_box(width="100%", height = "30%")	
############################################### Slide 13	
es2 <- edsurveyTable(composite ~ dsex + b017451, data = sdf, pctAggregationLevel = 0)	
library(knitr)	
library(kableExtra)	
kable(es2$data, format="html") %>%	
  kable_styling(font_size = 16) %>%	
  scroll_box(width="100%", height = "50%")	
############################################### Slide 14	
library(knitr)	
library(kableExtra)	
kable(es2$data, format="html") %>%	
  kable_styling(font_size = 16) %>%	
  scroll_box(width="100%", height = "75%")	
############################################### Slide 15	
library(knitr)	
library(kableExtra)	
kable(es2$data, format="html") %>%	
  kable_styling(font_size = 16) %>%	
  scroll_box(width="100%", height = "75%")	
############################################### Slide 16	
############################################### Slide 17	
############################################### Slide 18	
############################################### Slide 19	
############################################### Slide 20	
############################################### Slide 21	
library(EdSurvey)
sdf <- readNAEP(system.file("extdata/data", "M36NT2PM.dat", 
                            package="NAEPprimer"))

# store the data in this folder, you may want to update this
downloadTIMSS(years = c(2019), root = "~/")

TIMSS19 <- readTIMSS("~/TIMSS/2019", 
                     countries = c("usa"), gradeLvl = "4")
	
############################################### Slide 22	
showCutPoints(sdf)	
showCutPoints(TIMSS19)	
############################################### Slide 23	
ach <- achievementLevels("composite", data = sdf, 	
                         returnCumulative = TRUE)	
ach	
############################################### Slide 24	
ach$discrete	
ach$cumulative	
  achievementLevels("composite", data = sdf, 	
                    returnCumulative = TRUE, 	
                    cutpoints = c(250,300,350))	
############################################### Slide 25	
achievementLevels("mmat", data = TIMSS19, returnCumulative = TRUE)	
############################################### Slide 26	
ach1 <- achievementLevels(c("composite", "dsex"), data = sdf)	
ach1$discrete	
############################################### Slide 27	
ach2 <- achievementLevels(c("composite", "dsex"), 	
                          aggregateBy = "dsex", data = sdf)	
ach2$discrete	
############################################### Slide 28	
ach3 <- achievementLevels(c("composite", "dsex"), 	
                          aggregateBy = "composite", data = sdf)	
ach3$discrete	
############################################### Slide 29	
dsex_iep <- achievementLevels(c("composite", "dsex", "iep"),	
                              aggregateBy = c("dsex", "iep"), 	
                              data = sdf)	
searchSDF("dsex",data = sdf, levels = TRUE)	
searchSDF("iep",data = sdf, levels = TRUE)	
############################################### Slide 30	
dsex_iep$discrete	
############################################### Slide 31	
Q1 <- achievementLevels(c("composite", "dsex"), aggregateBy = "dsex", 	
                         data = sdf, returnCumulative = TRUE)	
Q1$cumulative	
	
############################################### Slide 32	
Q2 <- achievementLevels(c("composite", "dsex"), 	
                         aggregateBy = "composite", data = sdf)	
Q2$discrete	
############################################### Slide 33	
############################################### Slide 34	
############################################### Slide 35	
# 25th, 50th and 75th percentiles	
per <- percentile("composite", percentiles = c(25,50,75), data = sdf)	
per	
############################################### Slide 36	
# note df/se at 0 and 100. We would not report these.	
per <- percentile("composite", percentiles = c(0:100), data = sdf)	
library(knitr)	
library(kableExtra)	
kable(per, format="html") %>%	
  kable_styling(font_size = 16) %>%	
  scroll_box(width="100%", height = "60%")	
############################################### Slide 37	
############################################### Slide 38	
############################################### Slide 39	
############################################### Slide 40	
library(EdSurvey)	
sdf <- readNAEP(system.file("extdata/data", "M36NT2PM.dat", package = "NAEPprimer"))	
lm1 <- lm.sdf(composite ~ b017451,	
              weightVar = 'origwt', data = sdf)	
summary(lm1)	
############################################### Slide 41	
lm2 <- lm.sdf(composite ~ dsex + b017451, 	
              weightVar = 'origwt', data = sdf)	
############################################### Slide 42	
summary(lm2)	
############################################### Slide 43	
summary(lm2, src = TRUE)	
############################################### Slide 44	
lm3 <- lm.sdf(composite ~ dsex + b017451, 	
              weightVar = 'origwt',	
              relevels = list(dsex = "Female"), data = sdf)	
############################################### Slide 45	
summary(lm3)	
############################################### Slide 46	
############################################### Slide 47	
lmexercise2 <- lm.sdf(composite ~ b017101 + b018201,	
                      weightVar = 'origwt', data = sdf)	
summary(lmexercise2)	
############################################### Slide 48	
############################################### Slide 49	
############################################### Slide 50	
############################################### Slide 51	
############################################### Slide 52	
############################################### Slide 53	
mathGap <- gap(variable = "composite", data = sdf,	
               groupA = dsex %in% "Male", groupB = dsex %in% "Female")	
	
############################################### Slide 54	
mathGap$results	
############################################### Slide 55	
mathGap$percentage	
############################################### Slide 56	
mathGap2 <- gap(variable = "composite", data = sdf,	
               groupA = dsex %in% "Male", groupB = dsex %in% "Female",	
               achievementLevel = c("Basic", "Proficient", "Advanced"))	
	
mathGap2$results	
############################################### Slide 57	
mathGap3 <- gap(variable = "composite", data = sdf,	
               groupA = dsex %in% "Male", groupB = dsex %in% "Female",	
               percentiles = c(25, 50, 75))	
	
mathGap3$results	
############################################### Slide 58	
############################################### Slide 59	
downloadTIMSS(year=c(2019, 2015, 2011), root = "~/")	
TIMSS11<- readTIMSS("~/TIMSS/2011", 	
                    countries = c("usa"), gradeLvl = "4")	
TIMSS15<- readTIMSS("~/TIMSS/2015", 	
                    countries = c("usa"), gradeLvl = "4")	
TIMSS19<- readTIMSS("~/TIMSS/2019", 	
                    countries = c("usa"), gradeLvl = "4")	
############################################### Slide 60	
trend <- edsurvey.data.frame.list(list(TIMSS19, TIMSS15, TIMSS11))	
############################################### Slide 61	
#check the consistency of the gender variable	
searchSDF("itsex", trend, level=TRUE)	
TIMSS11$itsex <- ifelse(TIMSS11$itsex == "GIRL", "FEMALE", "MALE")	
trend2 <- edsurvey.data.frame.list(list(TIMSS19, TIMSS15, TIMSS11))	
############################################### Slide 62	
mathGap4 <- gap(variable = 'mmat', data = trend2) 	
mathGap4$results	
############################################### Slide 63	
mathGap5 <- gap(variable = 'mmat', data = trend, 	
                referenceDataIndex = 2) 	
mathGap5$results	
############################################### Slide 64	
trendGap <- gap(variable = "mmat", 	
                data = trend2,	
                groupA = itsex %in% "MALE", 	
                groupB = itsex %in% "FEMALE")	
trendGap$results	
############################################### Slide 65	
############################################### Slide 66	
# for reference	
help(package = "EdSurvey")	
searchSDF("text", sdf)	
levelsSDF("myvar", sdf)	
############################################### Slide 67	
TIMSS19USA<- readTIMSS(path = "C:/TIMSS/2019/", countries = c("usa"), gradeLvl = "4")	
TIMSS19FIN<- readTIMSS(path = "C:/TIMSS/2019/", countries = c("fin"), gradeLvl = "4")	
TIMSS19HKG<- readTIMSS(path = "C:/TIMSS/2019/", countries = c("hkg"), gradeLvl = "4")	
trend3 <- edsurvey.data.frame.list(list(TIMSS19USA, TIMSS19FIN, TIMSS19HKG))	
############################################### Slide 68	
trendGap <- gap(variable = "mmat", 	
                data = trend3,	
                groupA = itsex %in% "MALE", 	
                groupB = itsex %in% "FEMALE")	
trendGap$results	
############################################### Slide 69	
############################################### Slide 70	
vignette("introduction", package="EdSurvey")	
	
# There are additional functions that we couldn't cover!	
gap() #gap analysis	
cor.sdf() # Bivariate correlations using "Pearson", "Spearman", "polychoric", or "polyserial" methods	
edsurveyTable2pdf() # creating production ready summary tables	
cbind(), rbind(), append(), merge() # useful functions in processing data	
help(package = "EdSurvey")	
############################################### Slide 71	
############################################### Slide 72	
