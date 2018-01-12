library("XML")

con = url("https://scholar.google.co.in/citations?user=mQ3fDcgAAAAJ&hl=en&oi=ao")
htmlcode = readLines(con)
close(con)
htmlcode
