# AERA Training 

Greetings! 

Thank you for registering for our AERA course on **Analyzing NAEP and TIMSS Data Using R**. We are looking forward to meeting every one of you through the zoom webinar.  

Before the training, please install: 

- [R for your operating system](https://www.r-project.org/) 

- [RStudio Desktop](https://www.rstudio.com/products/rstudio/)  

To initialize your system, open RStudio and run the following script:
```
install.packages("EdSurvey")
library(EdSurvey)
```
To practice the achievement levels and gap sections with TIMSS datasets, download the datasets using the following script, once EdSurvey is successfully installed.
```
downloadTIMSS(years = c(2011, 2015, 2019), root = "~/")
```
Note: you may need to change the `root` argument depending on your system. Downloading the data files may take several hours to complete.

In addition, you can access and download all handouts through this [GitHub repo](https://github.com/American-Institutes-for-Research/2022-AERA-EdSurvey-Training). It contains the course agenda, presentation slides, and R code scripts. 

To help keep the course running smoothly please use the Q&A tool in the Zoom Webinar platform if you have any questions for this course. 

Warm Regards, 

Emmanuel, Ting, Paul, Marty, Sinan, and Michael
