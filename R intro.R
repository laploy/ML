# Basic computation in R
2+3
6/3
(3*8)/(2*3)
log(12)
sqrt(121)

# -------------------------------------
# Variable assigment
a <- 10
b <- 20
c <- a + b
c -> y
(y) + (a * b) -> m

# -------------------------------------
# Basic data type

rm(list = ls())   # clear object
name <- 'lap;oy'  # character
who <- paste(name, 'v.')  # string concat
price <- 1500     # numberic
x <-1; y <-2; z <-3
# c() = combind function
v <-c(x,y,z)      # double vector
bar <- 6:11       # integer vector
e <- exp(1)       # create double from function

# -------------------------------------
rm(list = ls())   # clear object
# Aritmetic operators
v <- c(1,2,3)
t <- c(2,2,1)
a <- v + t      # adding two vectors
s <- v - t      # substracts vector
m <- v * t      # multiply
d <- v / t      # divide
r <- v %% t     # remainder
e <- v ^ t      # exponent
# Relation operators
g <- v > t      # is greater?
b <- v < t      # is less?
b <- v == t     # is equal?
f <- v != t     # is NOT equla?

# -------------------------------------
# Array
rm(list = ls())   # clear object
# 2 dimensions array
a <- array(c(1,2,3,4,5,6,7,8,9,10,11,12), dim=c(3,4))
b <- a[1,3]        # get row 1 column 3 value to b
a[1,3] <- 123     # write to array element

# -------------------------------------
# Matrix
rm(list = ls())   # clear object
# create vector with 12 values
v <- c(1,2,3,4,5,6,7,8,9,10,11,12)  
# create matrix from vector
m <- matrix(data = v, nrow = 3, ncol= 4)
a <- m[1,3]      # access a vector
m[1,3] <- 1234    # chave vector value

# -------------------------------------
# List
rm(list = ls())   # clear object
# a list containing a number and string
e <- list(thing='hat', size=8.25)
print(e)
a1 <- e$thing     # access using key
a2 <- e[[1]]      # access using index
b1 <- e$size      # access using key
b2 <- e[[2]]      # access using index
# list can contain other list
g <- list(name='loy', age=25, e)
print(g)

# -------------------------------------
# Data frame
rm(list = ls())   # clear object
# create namne vector variable
name <- c('Loy', 'Jim', 'Bo', 'Alice', 'Tan')
# create age vector variable
age <- c(19,17,22,12,24)
# create gender vector variable
gender <- c('M', 'M', 'F', 'F', 'M')
# create data frame from vector
student <- data.frame(name, age,gender)
student$gender == 'F' # look for female student
student$age > 20      # look for student older than 20

# -------------------------------------
# If statement
rm(list = ls())   # clear object
x <- 1
if(x == 1){
  print('same')
} else if(x > 1){
  print('bigger')
} else {
  print('smaller')
}
# ifelse function
a = c(5,7,2,9)
ifelse(a %% 2 == 0, 'even', 'odd')

# -------------------------------------
# For loop
rm(list = ls())   # clear object
x <- c(2,5,3,9.8,11,6)
# iterate through elements
for(v in x) {
  print(v)
}
# count even element
count <- 0
for(val in x){
  if(val %% 2 == 0) 
    count = count + 1
}

# -------------------------------------
# While
i <- 1
while (i < 6) {
  print(i)
  i = i+1
}  

# -------------------------------------
# Plotting
# line chart
# Define the cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)

# Graph the cars vector with all defaults
plot(cars)

# Define the cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)

# Graph cars using blue points overlayed by a line 
plot(cars, type="o", col="blue")

# Create a title with a red, bold/italic font
title(main="Autos", col.main="red", font.main=4)

# Define 2 vectors
cars <- c(1, 3, 6, 4, 9)
trucks <- c(2, 5, 4, 5, 12)

# Graph cars using a y axis that ranges from 0 to 12
plot(cars, type="o", col="blue", ylim=c(0,12))

# Graph trucks with red dashed line and square points
lines(trucks, type="o", pch=22, lty=2, col="red")

# Create a title with a red, bold/italic font

# Read values from tab-delimited autos.dat 
autos_data <- read.table("C:/R/autos.dat", header=T, sep="\t")

# Graph autos with adjacent bars using rainbow colors
barplot(as.matrix(autos_data), main="Autos", ylab= "Total",
        beside=TRUE, col=rainbow(5))

# Place the legend at the top-left corner with no frame  
# using rainbow colors
legend("topleft", c("Mon","Tue","Wed","Thu","Fri"), cex=0.6, 
       bty="n", fill=rainbow(5));

# Define cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)

# Create a pie chart for cars
pie(cars)

# Define cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)

# Create a pie chart with defined heading and
# custom colors and labels
pie(cars, main="Cars", col=rainbow(length(cars)),
    labels=c("Mon","Tue","Wed","Thu","Fri"))


