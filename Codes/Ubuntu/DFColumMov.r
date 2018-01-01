data("mtcars")
class(mtcars)

head(mtcars)


CarsNew <- MoveFront(mtcars, c("hp", "gear"))
head(CarsNew)
