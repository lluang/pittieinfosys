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





```r
# Summarize a dataset by two variables
require(plyr)
FemPreg <- read.fwf("data/2006_2010_FemPreg.dat",
         widths = pregcolwidths,
         col.names = pregcolnames)

# Note the use of the '.' function to allow
# BABYSEX1 and PRGLNGTH to be used without quoting
Babysex_summary<-ddply(FemPreg, .(BABYSEX1, PRGLNGTH), summarize,

# Calculate mean and sd for each BABYSEX1 AND PRGLNGTH
 mean = round(mean(BIRTHWGT_OZ1), 2),
 sd = round(sd(BIRTHWGT_OZ1), 2))

# Plot charts of the result
plot(mean ~ BABYSEX1, type = "p", data = Babysex_summary)
```

![plot of chunk unnamed-chunk-2](6_SummarizingData-figure/unnamed-chunk-2-1.png) 

```r
plot(mean ~ PRGLNGTH, type = "b", data = Babysex_summary)
```

![plot of chunk unnamed-chunk-2](6_SummarizingData-figure/unnamed-chunk-2-2.png) 

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-3](6_SummarizingData-figure/unnamed-chunk-3-1.png) 

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-4](6_SummarizingData-figure/unnamed-chunk-4-1.png) 



l_ply {plyr}
========================================================

For each element of a list, apply function and discard results

Usage
========================================================

l_ply(.data, .fun = NULL, ..., .progress = "none", .inform = FALSE,
  .print = FALSE, .parallel = FALSE, .paropts = NULL)

Input & Output
========================================================

Input

- This function splits lists by elements.

Output

- All output is discarded. This is useful for functions that you are calling purely for their side effects like displaying plots or saving output.

Row names
========================================================

- no plyr function will preserve row names - in general it is too hard to know what should be done with them for many of the operations supported by plyr
- If you want to preserve row names, use name_rows to convert them into an explicit column in your data frame, perform the plyr operations, and then use name_rows again to convert the column back into row names.

Helpers
========================================================

Plyr also provides a set of helper functions for common data analysis problems:

- arrange: re-order the rows of a data frame by specifying the columns to order by
- mutate: add new columns or modifying existing columns, like transform, but new columns can refer to other columns that you just created
- summarise: like mutate but create a new data frame, not preserving any columns in the old data frame.
- join: an adapation of merge which is more similar to SQL, and has a much faster implementation if you only want to find the first match.

Helpers (continue)
========================================================

Plyr also provides a set of helper functions for common data analysis problems:

- match_df: a version of join that instead of returning the two tables combined together, only returns the rows in the first table that match the second.

- colwise: make any function work colwise on a dataframe

- rename: easily rename columns in a data frame

- round_any: round a number to any degree of precision

- count: quickly count unique combinations and return return as a data frame

