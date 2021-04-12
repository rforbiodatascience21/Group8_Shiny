library("dplyr")
library("stringr")

peptide_weight <- function(aa_string){
  
  A <- str_count(aa_string, "A") %>% sum()  * 89.1
  
  R <- str_count(aa_string, "R") %>% sum() * 174.2
  
  N <- str_count(aa_string, "N") %>% sum() * 132.1
  
  D <- str_count(aa_string, "D") %>% sum() * 133.1
  
  C <- str_count(aa_string, "C") %>% sum() * 121.2
  
  E <- str_count(aa_string, "E") %>% sum() * 147.1
  
  Q <- str_count(aa_string, "Q") %>% sum() * 146.2
  
  M <- str_count(aa_string, "M") %>% sum() * 149.2
  
  F <- str_count(aa_string, "F") %>% sum() * 165.2
  
  P <- str_count(aa_string, "P") %>% sum() * 115.1
  
  S <- str_count(aa_string, "S") %>% sum() * 105.1
  
  T <- str_count(aa_string, "T") %>% sum() * 119.1
  
  W <- str_count(aa_string, "W") %>% sum() * 204.2
  
  Y <- str_count(aa_string, "Y") %>% sum() * 181.2
  
  V <- str_count(aa_string, "V") %>% sum() * 117.1
 
  total_weight <- A + R + N + D + C + E + Q + M + F + P + S + T + W + Y + V
  
  print(total_weight)
}


aa_string <- "AAR"

peptide_weight(aa_string)

