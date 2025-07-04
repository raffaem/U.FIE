library(plm)
data(jtrain, package = "wooldridge")

# Generate pdata.frame:
jtrain.p <- pdata.frame(jtrain, index = c("fcode", "year"))

pdim(jtrain.p)

# Estimate FE model
summary(plm(lscrap ~ d88 + d89 + grant + grant_1,
  data = jtrain.p, model = "within"
))
