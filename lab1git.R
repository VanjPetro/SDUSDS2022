
#If you don't know what a function does, try searching for help with "?"
#```{r echo=TRUE}
#? mean

#https://stats.stackexchange.com/questions/157661/how-to-calculate-mean-median-mode-std-dev-from-distribution

#This is a really useful search engine (Google plus filter for R-relevant content): https://rseek.org/

# Simple operations

#You can use either "<-" or "=" to assign a value to a variable.
a <- 5
b = c(2,4,6,8)
d <- c(3,5,7,9)
e <- 7

#The "c" in the above vector assignment stands for combine into a vector. The elements in the array are indexed from 1 to n. (in some other programming languages the index starts from 0)
#You can see the result by typing the variable name to the console.
a
#Selecting the 3rd element of the vector:
d[3]

#Now we can do some arithmetic with the vectors.
a*b
b+d
b+1

#Notice when a vector is multiplied with a scalar (=a single value/number), each of the elements in the vector is multiplied. And when two vectors are added/multiplied, they must be the same dimensions and the arithmetic happens elementwise.

#Boolean values can also be stored and manipulated in R

b1 <- TRUE
b2 <- 1>2

#rep, seq, and rev are useful functions to produce and manipulate simple vectors
# repeat fungerer således: rep(element, gentag x antal gange)
rep(1,7)
# sekvens af tal fra x - y, med a hop - hernede altså fra 1-7, med 2 som hop
seq(1,7,by=2)
# reverse (seq) - altså omvendt rækkefølge, - her altså tæl 7 gange ned til 1
rev(seq(1,7))
?seq
#Your turn:
#1We create a vector V with the even numbers between 1 and 10. Show its content.**
#Your code here
V<-seq(1,10, by=2)+1
V2<-seq(2,10, by=2)
V
#2) look at its third entry and test if it is larger than 3.**
#Your code here
# indekserer[3 element] i vektor V, tjek om den er størrre end 3
V[3]>3
# Reverse its order and divide each of its entries by 2.**
#Your code here
rev(V)/2

#Check whether the value of a is higher than the value of  object 'e'**
#Your code here
a>e

alpha <- round(log(150))
beta <- 50/10

#Your code here
alpha>beta

#install package + load ggplot
library(tidyverse)
#Your code here

# 10 ggplot2 is used for plotting basically everything - and done beautifully. We will return to data visualization using ggplot2 in lesson 3. Until then, here is a basic plot using the built-in dataset 'mtcars'**
ggplot() + 
  geom_point(data = mtcars, aes(x = disp, y = mpg)) + 
  geom_smooth(data=mtcars, aes(x=disp,y=mpg), method="lm") +
  theme_void()

exlm <- lm(mpg~wt, data=mtcars)
