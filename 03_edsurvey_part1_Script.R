############################################### Slide 1	
source("CreatingRscriptsFromRmd.R")	
############################################### Slide 2	
############################################### Slide 3	
############################################### Slide 4	
############################################### Slide 5	
############################################### Slide 6	
############################################### Slide 7	
############################################### Slide 8	
############################################### Slide 9	
############################################### Slide 10	
############################################### Slide 11	
############################################### Slide 12	
############################################### Slide 13	
############################################### Slide 14	
# this line is not executed	
x <- 12	
x	
j <- 12	
J	
############################################### Slide 15	
?mean	
############################################### Slide 16	
colors <- c("red", "green", "blue")	
colors	
numbers <- c(1, 2, 3)	
numbers	
############################################### Slide 17	
mean(x = numbers)	
mean(numbers)	
############################################### Slide 18	
# to install the package	
install.packages("EdSurvey")	
# to load the package	
library(EdSurvey)	
############################################### Slide 19	
vignette("introduction", package="EdSurvey")	
help(package = "EdSurvey")	
############################################### Slide 20	
############################################### Slide 21	
############################################### Slide 22	
sdf <- readNAEP(system.file("extdata/data", "M36NT2PM.dat", package = "NAEPprimer"))	
############################################### Slide 23	
math17 <- readNAEP("//path_to_directory/Data/M48NT2AT.dat")	
############################################### Slide 24	
############################################### Slide 25	
############################################### Slide 26	
############################################### Slide 27	
############################################### Slide 28	
############################################### Slide 29	
############################################### Slide 30	
############################################### Slide 31	
############################################### Slide 32	
############################################### Slide 33	
############################################### Slide 34	
print(sdf)	
############################################### Slide 35	
dim(sdf)	
############################################### Slide 36	
colnames(sdf)	
############################################### Slide 37	
searchSDF("education", sdf)	
searchSDF("b003501", sdf, levels = TRUE)	
searchSDF("", sdf)	
############################################### Slide 38	
levelsSDF("b018201", sdf)	
############################################### Slide 39	
showCodebook(sdf)	
View(showCodebook(sdf))	
############################################### Slide 40	
showPlausibleValues(sdf)	
showPlausibleValues(sdf, verbose = TRUE)	
############################################### Slide 41	
showWeights(sdf)	
showWeights(sdf, verbose = TRUE)	
############################################### Slide 42	
############################################### Slide 43	
############################################### Slide 44	
############################################### Slide 45	
############################################### Slide 46	
############################################### Slide 47	
gddat <- getData(sdf, varnames = c('dsex', 'sdracem', 'b018201', 'b017451',	
                                   'composite', 'geometry', 'origwt'),	
              addAttributes = TRUE, omittedLevels = FALSE)	
############################################### Slide 48	
# Note: head returns the first 6 rows of a data frame	
head(gddat)	
############################################### Slide 49	
gddat <- getData(sdf, varnames = c('dsex', 'sdracem', 'b018201', 'b017451',	
                                   'composite', 'geometry', 'origwt'),	
              addAttributes = TRUE, omittedLevels = FALSE)	
############################################### Slide 50	
subsetSDF <- subset(sdf, dsex %in% c("Male"))	
dim(sdf)	
dim(subsetSDF)	
############################################### Slide 51	
sdf2 <- recode.sdf(sdf, recode =	
                     list(b017451 = list(from = c("Never or hardly ever", "Once every few weeks"),	
                                         to = c("Infrequently")),	
                          b017451 = list(from = c("Every day"),	
                                        to = c("Frequently")))	
                   )	
searchSDF("b017451", sdf2, levels = TRUE)	
############################################### Slide 52	
sdf2 <- rename.sdf(sdf2, oldnames = "b017451",	
                   newnames = "studytalkfrequency")	
searchSDF("studytalkfrequency", sdf2, levels = TRUE)	
############################################### Slide 53	
