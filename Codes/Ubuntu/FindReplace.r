country <- data.frame(Location = c("London, UK", "Oxford, UK", "Berlin, DE", 
                         "Hamburg, DE"), Value = c(8, 0.1, 3, 2))
country

Replaces <- data.frame(from = c("UK", "DE"), to = c("England", "Germany"))

Replaces

library(DataCombine)

countrynew <- FindReplace(data = country, Var = "Location", replaceData = Replaces, from = "from", to = "to", exact = FALSE)

countrynew
