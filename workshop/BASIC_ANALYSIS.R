# R Commander
library(RcmdrMisc)


# Initial Data Entry P9
# Opening a Comma Separated Variable (CSV) spreadsheet in Rcmdr 

datadirectory <- "E:\\Documents\\courses\\datascience\\pittieinfosys2015\\workshop\\"
Dataset <- read.table(paste(datadirectory, "DataSet.csv", sep=""),
                      header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
# Saving and loading a data set
save("Dataset", file=paste(datadirectory, "DatasetR.RData", sep=""))
load(paste(datadirectory, "DatasetR.RData", sep=""))
# Opening more CSV spreadsheets
Dataset1 <- read.table(paste(datadirectory, "DataSet1.csv", sep=""), 
                       header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
Dataset2 <- read.table(paste(datadirectory, "DataSet2.csv", sep=""), 
                       header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)




# Basic Analysis

# Descriptive statistics P15
library(abind, pos=17)
library(e1071, pos=18)
numSummary(Dataset[,"Test1", drop=FALSE], statistics=c("mean", "sd", "IQR", 
                                                       "quantiles"), quantiles=c(0,.25,.5,.75,1))
# Correlations P18
library(lattice, pos=19)
library(survival, pos=19)
library(Formula, pos=19)
library(ggplot2, pos=19)
library(Hmisc, pos=19)
rcorr.adjust(Dataset[,c("Test1","Test2")], type="pearson", use="complete")

# Two-sample t-tests P21
# Output when Alternative Hypothesis = Two-sided
t.test(Test1~Class, alternative='two.sided', conf.level=.95, var.equal=TRUE, 
       data=Dataset)
# Output when Alternative Hypothesis = Difference < 0
t.test(Test1~Class, alternative='less', conf.level=.95, var.equal=TRUE, data=Dataset)
# Output when Alternative Hypothesis = Difference > 0
t.test(Test1~Class, alternative='greater', conf.level=.95, var.equal=TRUE, data=Dataset)

# Within-groups/Repeated-measures/Correlated-groups/Paired t-test P26
# Output when Alternative Hypothesis = Two-sided
with(Dataset, (t.test(Test1, Test2, alternative='two.sided', conf.level=.95, 
                      paired=TRUE)))
# Output when Alternative Hypothesis = Difference < 0
with(Dataset, (t.test(Test1, Test2, alternative='less', conf.level=.95, paired=TRUE)))
# Output when Alternative Hypothesis = Difference > 0
with(Dataset, (t.test(Test1, Test2, alternative='greater', conf.level=.95, 
                      paired=TRUE)))

# One-Way Analysis of Variance (ANOVA) and Post-Hoc Tests P30
library(mvtnorm, pos=24)
library(MASS, pos=24)
library(TH.data, pos=24)
library(multcomp, pos=24)
AnovaModel.1 <- aov(maxspeed ~ Vechicle, data=Dataset1)
summary(AnovaModel.1)
with(Dataset1, numSummary(maxspeed, groups=Vechicle, statistics=c("mean", "sd")))
local({
  .Pairs <- glht(AnovaModel.1, linfct = mcp(Vechicle = "Tukey"))
  print(summary(.Pairs)) # pairwise tests
  print(confint(.Pairs)) # confidence intervals
  print(cld(.Pairs)) # compact letter display
  old.oma <- par(oma=c(0,5,0,0))
  plot(confint(.Pairs))
  par(old.oma)
})

# Two-Way Analysis of Variance (ANOVA) P35
AnovaModel.2 <- lm(maxspeed ~ driver*Vechicle, data=Dataset1, contrasts=list(driver ="contr.Sum", Vechicle 
                                                                             ="contr.Sum"))
Anova(AnovaModel.2)
with(Dataset1, (tapply(maxspeed, list(driver, Vechicle), mean, na.rm=TRUE))) # means
with(Dataset1, (tapply(maxspeed, list(driver, Vechicle), sd, na.rm=TRUE))) # std. deviations
xtabs(~ driver + Vechicle, data=Dataset1) # counts

# Graphing interactions with multi-way ANOVAs P38
with(Dataset1, plotMeans(traveltime, Vechicle, driver, error.bars="none", connect=TRUE, legend.pos="farright"))

# Linear regression P40
RegModel.3 <- lm(traveltime~maxspeed, data=Dataset1)
summary(RegModel.3)


# Chi-square
local({
  .Table <- xtabs(~Class+Lunch, data=Dataset2)
  cat("\nFrequency table:\n")
  print(.Table)
  .Test <- chisq.test(.Table, correct=FALSE)
  print(.Test)
})
.Table <- matrix(c(10,10,11,9), 2, 2, byrow=TRUE)
dimnames(.Table) <- list("rows"=c("F", "S"), "columns"=c("pizza", "salad"))
.Table  # Counts
.Test <- chisq.test(.Table, correct=FALSE)
.Test
remove(.Test)
remove(.Table)

