Module 6: Summarizing data (plyr)
========================================================
author: Yuwen Yang
date: 

Mean, Variance
========================================================

mean(x, ...), Var(x, ...)

Default S3 method:


Examples
========================================================

x <- c(0:10, 50)

xm <- Var(x)

c(xm, mean(x, trim = 0.10))

Sample Quantiles
========================================================
The generic function quantile produces sample quantiles corresponding to the given probabilities. The smallest observation corresponds to a probability of 0 and the largest to a probability of 1.

Usage
========================================================

quantile(x, ...)

Default S3 method:

quantile(x, probs = seq(0, 1, 0.25), na.rm = FALSE,
         names = TRUE, type = 7, ...)

Box and whiskers
========================================================
The upper and lower "hinges" correspond to the first and third quartiles (the 25th and 75th percentiles). This differs slightly from the method used by the boxplot function, and may be apparent with small samples.

Usage
========================================================

geom_boxplot(mapping = NULL, data = NULL, stat = "boxplot",

  position = "dodge", outlier.colour = NULL, outlier.shape = NULL,

  outlier.size = NULL, notch = FALSE, notchwidth = 0.5,

  varwidth = FALSE, ...)

plyr: the split-apply-combine paradigm for R.
========================================================

a set of clean and consistent tools that implement the split-apply-combine pattern in R

- breaking it down into small pieces
- doing something to each piece
- combining the results back together again

Details
========================================================

named according to what sort of data structure they split up and what sort of data structure they return:

a: array

l: list

d: data.frame

m: multiple inputs

r: repeat multiple times

_: nothing



Details (continue)
========================================================

So:

- ddply takes a data frame as input and returns a data frame as output
- l_ply takes a list as input and returns nothing as output

ddply {plyr}
========================================================

For each subset of a data frame, apply function then combine results into a data frame

- ddply(.data, .variables, .fun = NULL, ..., .progress = "none",
  .inform = FALSE, .drop = TRUE, .parallel = FALSE, .paropts = NULL)

Input & Output
========================================================

Input

- This function splits data frames by variables.

Output

- The most unambiguous behaviour is achieved when .fun returns a data frame - in that case pieces will be combined with rbind.fill. If .fun returns an atomic vector of fixed length, it will be rbinded together and converted to a data frame. Any other values will result in an error.

If there are no results, then this function will return a data frame with zero rows and columns (data.frame()).

Example
========================================================











```
processing file: 6_SummerizingData.Rpres
Loading required package: plyr
Quitting from lines 221-240 (6_SummerizingData.Rpres) 
错误于file(file, "rt") : 无法打开链结
```
