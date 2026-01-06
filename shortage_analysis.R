#R project to help analysis of the Drug shortage list from NNGYK
#Environment in theory only requires tidyverse, and specifically the dplyr package to analyse

#Task 1 is to write a script that analysis the csv file of the list
#I would like to write a script that looks through the list of companies that hold the rights to the different drugs that are in shortage and find ones that have duplicates of them
#This came from the observation that Teva has multiple entries (Teva B.V., Teva Gmbh, Teva Gyogyszergyar Zrt.)
#Thus I will do a regex search that compile any entries with multiple variations 
#I would also need to account for commonly occurring words in company names like 'Zrt', 'Kft', 'GmbH', etc. to filter those out

#To do this, I will try to remove those words from the entries and then run a script to find entries with multiple common words

#Environment
library(tidyverse)
library(stringr)

#Shortage Datalist
shortage_list <- read.csv('C:\\Users\\U1061617/Desktop/Shortage_project/shortage_list.csv', header = TRUE, stringsAsFactors = FALSE)

companies <- shortage_list %>% 
  select(Forg.Eng.Jog)

#Using regex to make a new column of the filtered data
companies <- companies %>% 
  mutate(company_clean = str_remove_all(Forg.Eng.Jog,
                                       regex("Zrt\\.?|Kft\\.?| GmbH|Ltd\\.?|B.V.|AG|gmbh",
                                       ignore_case = TRUE)))


#I have checked the data and it seems good, now I would need to find the matches
#Inputting all unique entries
unique_company <- companies %>% 
  distinct()

unique_company <- distinct_company %>% 
  select(company_clean)

#Then making all letters lowercase
unique_company <- unique_company %>% 
  mutate(company_lowercase = str_trim(str_to_lower(company_clean)))
  
  
#Now the solution to my entry would be to fuzzy match to find similar but not the exact same entries
#stringdist package would be ideal for this
install.packages('stringdist')
library(stringdist)


# Vector of unique normalized company names
names_vec <- unique(unique_company$company_lowercase)

# Compute pairwise string distance matrix using Jaro-Winkler method
dist_mat <- stringdistmatrix(names_vec, names_vec, method = "jw")

# Set a threshold for fuzzy similarity (e.g., 0.15)
threshold <- 0.30

# Get pairs below threshold excluding self-matches
matches <- which(dist_mat < threshold & dist_mat > 0, arr.ind = TRUE)

# Create a data frame of matched pairs and their distance score
similar_companies <- data.frame(
  name1 = names_vec[matches[, 1]],
  name2 = names_vec[matches[, 2]],
  distance = dist_mat[matches]
)

# View the pairs of similar company names (near duplicates)
print(similar_companies)



#So I have tried to fuzzy match but the entries that started giving me the matches with Teva happened around 0.25-0.30 of the method
#But it resulted in 774 entries at 0.30, which is just too much
#In order to find matches, I am doing both this match and parse it through by hand and hand analysing just the unique entry list of of dataset
#Using alphabetical ordering, it is not too hard to notice all the duplicates