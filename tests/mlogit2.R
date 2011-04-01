#
library(multivariate.zelig)
data(mexico)
z.out2 <- zelig(list(id(vote88,"1")~pristr + othcok, id(vote88,"2")~othsocok), model = "mlogit", 
               data = mexico)

summary(z.out2)

x.weak <- setx(z.out2, pristr = 1)
x.strong <- setx(z.out2, pristr = 3)

s.out2 <- sim(z.out2, x = x.strong, x1 = x.weak)

summary(s.out2)


