library(AppliedPredictiveModeling)
transparentTheme(trans = .4)
library(caret)

input <- function(inputfile) {
   myData <<- read.csv(inputfile)
}

run <- function() {}

output <- function(outputfile) {

featurePlot(x = myData[, 1:4], 
            y = myData$Species, 
            plot = "pairs",
            ## Add a key at the top
            auto.key = list(columns = 3))
ggsave(
  outputfile
)

}
