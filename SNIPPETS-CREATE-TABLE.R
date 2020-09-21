############### SNIPPETS

############### for each group I want to calculate the mean of valor1 and put this in a table

############### 1st step creat a snippet to split nome using a snippet and filter function, who needs tidyverse library
library(tidyverse)
numberCOLUMN1 <- function(X) {
  X <- exemplo %>% filter(nome == X)
}

############### 2nd step create a snippet for the mean
meanVALOR1 <- function(x) {
  mean(x$valor1)
}

############### Apply the snippets
grupo1 <- numberCOLUMN1("grupo1")
mean1 <- meanVALOR1(grupo1)

grupo2 <- numberCOLUMN1("grupo2")
mean2 <- meanVALOR1(grupo2)

grupo3 <- numberCOLUMN1("grupo3")
mean3 <- meanVALOR1(grupo3)

grupo4 <- numberCOLUMN1("grupo4")
mean4 <- meanVALOR1(grupo4)

############# create column "grupo"
grupo <- c("grupo1", "grupo2", "grupo3", "grupo4")

############# create a column with the respective mean of each group
means <- rbind(mean1, mean2, mean3, mean4)

############ create a table with both columns
finaltable <- cbind(grupo, means)

############this we can see that finaltable is not a dataframe
typeof(finaltable)

########### convert to dataframe 
finaltable <- as.data.frame(finaltable)




