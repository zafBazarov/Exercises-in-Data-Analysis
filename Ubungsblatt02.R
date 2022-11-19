##### In this exercise, I show how to make a percentage, proportion, 
#### and matrix of characteristic data.

## That information will be used in my analysis.

Indexes <- c(
  "FH", "MI", "BA", "BA", "FH", "MI", "BA", "FC", "BA", "BA",
  "BA", "BA", "BA", "BH", "BA", "ME", "BA", "ME", "ME", "MI",
  "BA", "MI", "BA", "TU", "BA", "MI", "BA", "BA", "BA", "BA",
  "FH", "ME", "BA", "MI", "TU", "BA", "BA", "ME", "BA", "BH",
  "BA", "BA", "BA", "MI", "BA", "BA", "FC", "BA", "ME", "BA",
  "BA", "BA", "BA", "BA", "BA", "MI", "BA", "BA", "FH", "BA",
  "ME", "BA", "BA", "MI", "BA", "ME", "FH", "BA", "BA", "TU",
  "ME", "FC", "ME", "FH", "MI", "FH", "BA", "BA", "BA", "BA",
  "BA", "BA", "BA", "BA", "BA", "MI", "ME", "BA", "BA", "FH",
  "BA", "BA", "MI", "TU", "BA", "ME", "MI", "ME", "BA", "ME",
  "BA", "FC", "FC", "BA")

str(Indexes)
# table command uses cross-classifying factors to build 
# a contingency table of the counts at each combination of factor levels.
absHK <- table(Indexes)

# proportions uses returns conditional proportions given margins, i.e. entries of x, 
# divided by the appropriate marginal sums.
(relHK <- proportions(absHK))

# And here are the percentages:
(procent <- 100 * relHK)

# I will use this command to take a sequence of vector, 
# matrix or data-frame arguments and combine by columns or rows, respectively. 

cbind("Absolute HK" = absHK, "Relative HK" = round(relHK, 4),
      "Prozent" = round(procent, 1))
