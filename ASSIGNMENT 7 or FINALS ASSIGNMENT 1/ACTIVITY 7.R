#libraries
library(arules)
library(arulesViz)

#Load dataset
data("Groceries")

#Top 15
itemFrequencyPlot(Groceries,
                  topN = 15,
                  type = "relative",
                  main = "Top 15 Most Frequent Items")

rules <- apriori(Groceries,
                 parameter = list(supp = 0.01, conf = 0.3, minlen = 2))
summary(rules)

#First 10 rules
inspect(head(rules, 10))

#Top 10 by lift
inspect(head(sort(rules, by = "lift"), 10))

#whole milk
milk_rules <- subset(rules, rhs %in% "whole milk")
inspect(head(sort(milk_rules, by = "confidence"), 10))

#Top 50 by lift
top50 <- head(sort(rules, by = "lift"), 50)

# Plots
plot(rules, method = "scatterplot", shading = "lift") 
plot(top50, method = "graph", control = list(type = "items")) 
plot(rules, method = "grouped")
