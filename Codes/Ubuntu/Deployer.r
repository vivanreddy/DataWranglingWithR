# Select  : return a subset of the columns of data frame
# Filter  : extract rows based on logical conditions
# Arrange : reorder rows of a data frame
# Rename  : rename variables in data frame
# Mutate  : add new variable.columns or transform existing variables
# Summarise : Summary statistics

# The first argument is a df
# Subsequent arguments tell what to do about it
# Result is a new data frame

library("dplyr")

data("LifeCycleSavings")

# Some quick explorations
dim(LifeCycleSavings)
names(LifeCycleSavings)
str(LifeCycleSavings)
head(LifeCycleSavings)
tail(LifeCycleSavings)

# Different ways to select interested columns
select(LifeCycleSavings, sr:pop75)
select(LifeCycleSavings, 1:3)

# Select except certain ranges
LifeCycleSavings
select(LifeCycleSavings, -(pop15:pop75))

# Filter rows based on logical conditions
LifeCycleSavings
LifeCycleSavings <- tibble::rownames_to_column(LifeCycleSavings, "Country")
filter(LifeCycleSavings, sr > 8 )
filter(LifeCycleSavings, sr > 8 & pop15>40 )
filter(LifeCycleSavings, sr > 8 & pop15>40 & pop75<1 )
filter(LifeCycleSavings, sr > 8 & pop15>40 & pop75<1 & dpi<100)

# Order in a certain fashion
LifeCycleSavings

arrange(LifeCycleSavings, sr) # Ascending
arrange(LifeCycleSavings, desc(sr)) # Descending

# Rename Variables
renamed = rename(LifeCycleSavings, PSavings=sr, Under15 = pop15, Over75 = pop75)

# Mutate Values
renamed = mutate(renamed, PSavingsNew = PSavings-mean(PSavings, na.rm = TRUE))
renamed

summarize(renamed, Under15New = mean(Under15, na.rm = TRUE))

