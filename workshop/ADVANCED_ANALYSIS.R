# Advanced Analysis

# Import data
datadirectory <- "C:/Users/QING/Desktop/Rcmdr/"
#datadirectory <- "E:\\Documents\\courses\\datascience\\pittieinfosys2015\\workshop\\"
Dataseti <- read.table(paste(datadirectory, "DataSet.csv", sep=""), 
                       header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)

# Descriptive statistics for sub-groups P49
library(abind, pos=17)
library(e1071, pos=18)
numSummary(Dataseti[,"Test1", drop=FALSE], groups=Dataseti$Class, 
           statistics=c("mean", "sd", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))


# Correlation test: Testing the significance of correlations P53
# Output when Alternative Hypothesis = Two-sided
with(Dataseti, cor.test(Test1, Test2, alternative="two.sided", 
                        method="pearson"))
# Output when Alternative Hypothesis = Correlation < 0
with(Dataseti, cor.test(Test1, Test2, alternative="less", method="pearson"))
# Output when Alternative Hypothesis = Correlation > 0
with(Dataseti, cor.test(Test1, Test2, alternative="greater", 
                        method="pearson"))

# Graph P56
# Import data
Datasetii <- read.table(paste(datadirectory, "DataSet1.csv", sep=""), 
                       header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
#Datasetii <- read.table("C:/Users/QING/Desktop/Rcmdr/DataSet1.csv", 
#                        header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
# Scatterplot
scatterplot(traveltime~maxspeed, reg.line=FALSE, smooth=FALSE, spread=FALSE,
            boxplots=FALSE, span=0.5, ellipse=FALSE, levels=c(.5, .9), data=Datasetii)
# Scatterplot by groups
scatterplot(traveltime~maxspeed | Vechicle, reg.line=FALSE, smooth=FALSE, 
            spread=FALSE, boxplots=FALSE, span=0.5, ellipse=FALSE, levels=c(.5, .9), 
            by.groups=TRUE, data=Datasetii)
# Import data
Datasetiii <- read.table(paste(datadirectory, "DataSet3.csv", sep=""), 
                       header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
#Datasetiii <- read.table("C:/Users/QING/Desktop/Rcmdr/DataSet3.csv", 
#                         header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
# Line graph
with(Datasetiii, lineplot(time, temperature))
# Import data
Datasetiiii <- read.table(paste(datadirectory, "DataSet2.csv", sep=""), 
                       header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
#Datasetiiii <- read.table("C:/Users/QING/Desktop/Rcmdr/DataSet2.csv", 
#                          header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
# Bar graph
with(Datasetiiii, Barplot(Lunch, xlab="Lunch", ylab="Frequency"))



# Miscellaneous

# Opening an Excel spreadsheet P66
data1 <- readXL(paste(datadirectory, "data1.xlsx", sep=""), rownames=FALSE, 
                header=TRUE, na="", sheet="DataSet", stringsAsFactors=TRUE)

# Recording variables P70
Datasetii <- within(Datasetii, {
  speed <- Recode(maxspeed, '50:hi="fast"; else="slow";', 
                  as.factor.result=TRUE)
})

# Combining items P73
Dataset <- read.table(paste(datadirectory, "DataSet.csv", sep=""),
                      header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
Dataset$test_total <- with(Dataset, Test1+ Test2)

# Import data
data1 <- readXL(paste(datadirectory, "data1.xlsx", sep=""), rownames=FALSE, 
                header=TRUE, na="", sheet="DataSet", stringsAsFactors=TRUE)
Datasetv <- read.table(paste(datadirectory, "DataSet4.csv", sep=""), 
                       header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)

# Converting variables from numeric to factor items P75
Datasetv <- within(Datasetv, {
  condition <- as.factor(condition)
})



# Coding in R

# Deleting data sets P77
rm(Dataset)

# Import data

RM_Anova <- read.table(paste(datadirectory, "RM_Anova.csv", sep=""), 
                       header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
demodata <- read.table(paste(datadirectory, "demodata.csv", sep=""), 
                       header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)

# Labeling points in a scatterplot P79
scatterplot(Exam1~Lectures, reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, span=0.5, data=demodata)
text(demodata$Lectures, demodata$Exam1, demodata$Student)

# Repeated-measures ANOVA P82
# (in console)install.packages("ez")
library(ez, pos=17)
# (in console)options(contrasts=c("contr.sum", "contr.poly"))
# (in console)ezANOVA(data=RM_Anova, dv=.(relax), wid=.(subject), within=.(condition), detailed=TRUE)

# Post-hoc test for repeated-measures ANOVA P86* 
# (in console)install.packages("agricolae")
library(agricolae, pos=18)
participant <- read.table(paste(datadirectory, "participant.csv", sep=""), header=TRUE, sep=",", na.strings="NA", 
                          dec=".", strip.white=TRUE)
# (in console)options(contrasts=c("contr.sum", "contr.poly"))
# (in console*)resultsname <- ezANOVA(data=RM_Anova, dv=.(relax), wid=.(subject), within=.(condition), return_aov=TRUE)
# (in console)resultsname2 <- summary(resultsname$aov)
# (in console)MSW <- resultsname2[[2]][[1]][2, 3]
# (in console)dfW <- resultsname2[[2]][[1]][2, 1]
# (in console)(HSD.test(y = RM_Anova$relax, trt = RM_Anova$condition, DFerror = dfW, MSerror = MSW, alpha = .05))

# Mixed-method ANOVA P89
# summary(aov(score ~ class*test, data = participant))

# Post-hoc test for mixed-method ANOVA P91
# TukeyHSD((aov(score ~ class*test, data = participant)))

# Updating packages P93
# (in console)update.packages()
# (in console)y