data()

?mtcars

data("mtcars")
head(mtcars)
head(mtcars, 4)
tail(mtcars)

class(mtcars)
dim(mtcars)


names(mtcars)

str(mtcars)
summary(mtcars)

hist(mtcars$mpg)
hist(mtcars$hp)
hist(mtcars$cyl)

plot(mtcars$mpg, mtcars$hp)


# Ecoding to with digits

list = sample(c("yes", "no"), size = 10, replace = TRUE)
list
list = factor(list)
list
list = as.numeric(list)
list

