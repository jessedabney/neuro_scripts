#Make sample metadata table
#17.05.18
#Jesse Dabney

#Make a sample table for the project, with relevant metadata

library(tidyverse)

#column data
samples <- seq(1:16)
region <- c(rep("SVZ", 8), rep("DG", 8))
treatment <- rep(c(rep(0, 4), rep(1, 4)), 2)
diff <- rep(c(rep(0, 2), rep(1, 2)), 4)
prol <- as.numeric(!diff)
state <- rep(c(rep("proliferative", 2), rep("differentiated", 2)), 4)

#create tibble
data <- tibble(sampleID = samples,
               region = region,
               treatment = treatment,
               state = state,
               differentiated = diff,
               proliferative = prol)

#save table as .txt
write_tsv(data, "./sample_metadata.txt")
