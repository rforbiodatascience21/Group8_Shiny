
#Testing out the random DNA function to get an idea of what we are doing.
# R/random_dna.R
random_dna <- function(l, size = 99){
  nucleotides <- sample(c("A", "T", "G", "C"), size , replace = TRUE) 
  dna = paste0(nucleotides, collapse = "")
  return(dna)
}

#This gives a random DNA string of 99 basepairs as standard but can be changed

random_dna()
