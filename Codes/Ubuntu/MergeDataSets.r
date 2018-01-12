# Merging Two Data Frames
library(dplyr)

df1 = data.frame(id = sample(1:10), x = rnorm(10))
df1
df2 = data.frame(id = sample(1:10), y = rnorm(10))
df2
arrange(join(df1,df2), id)


# If having multiple Data Frames
df1 = data.frame(id = sample(1:10), x = rnorm(10))
df2 = data.frame(id = sample(1:10), y = rnorm(10))
df3 = data.frame(id = sample(1:10), z = rnorm(10))
dfList = list(df1, df2, df3)
dfList
join_all(dfList)
