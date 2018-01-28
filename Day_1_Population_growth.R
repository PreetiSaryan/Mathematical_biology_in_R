##Modeling basic exponential model for population growth
library(ggplot2)
r = 3 # growth rate
pop_size = 10 # Initial population size
for (i in 2:100){
  pop_size[i] = pop_size[i-1]*r
}
Time_vect = seq(0,99,1)
total_pop = cbind(pop_size, Time_vect); total_pop
total_pop = as.data.frame(total_pop)
ggplot(total_pop, aes(Time_vect, pop_size))+geom_point()+
  labs(x= "Generation time", y= "Population size", title = "")
