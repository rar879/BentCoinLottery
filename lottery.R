# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

# Small edit! from class 1!

number_of_coin_flips <- 10L
probability_of_heads <- 0.1L
max_number_repeated_coin_flip_iterations <- 100L
iteration <- i


Outcome_of_Coin_Flips <- array(0, number_of_coin_flips)
for (iteration in 1:10){
  #random number within a uniform distribution
  Outcome_of_Coin_Flips[iteration] <- if (runif(1) < probability_of_heads) 1 else 0
}

for (Number_Repeat_Iterations_of_10_Coin_Flips in 1:max_number_repeated_coin_flip_iterations){
  Outcome_of_Coin_Flips <- array(0,10)
  for (iteration in 1:10){
    Outcome_of_Coin_Flips[iteration] <- if (runif(1) < probability_of_heads) 1 else 0
  }
  print(Outcome_of_Coin_Flips)
}
