#Load Data File
load("prrace08.rda")

#View(prrace08)
#Assign data lenght for n
n <- length(prrace08$state)

#Assign Variables
Obama_ElV <- 0
McCain_ElV <- 0

#If statement and for loop to determine who has the elatoral vote
for (i in 1:n) {
  if (prrace08$p_obama[i]<prrace08$p_mc_cain[i]) {
    McCain_ElV <- (McCain_ElV + prrace08$el_votes[i])
    #View(McCain_ElV)
  } else {
    Obama_ElV <- (Obama_ElV + prrace08$el_votes[i])
    #View(Obama_ElV)
  }
}

#Nebraska Split
Obama_ElV <- Obama_ElV +1
McCain_ElV <- McCain_ElV -1

#View(Obama_ElV)
#View(McCain_ElV)

#print outcome
cat("Obama:", Obama_ElV)
cat("McCain:", McCain_ElV)

