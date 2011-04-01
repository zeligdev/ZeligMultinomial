library(multivariate.zelig)

data(mexico)

z.out1 <- zelig(as.factor(vote88) ~ pristr + othcok + othsocok, model = "mlogit", 
               data = mexico)
summary(z.out1)


x.weak <- setx(z.out1, pristr = 1)
x.strong <- setx(z.out1, pristr = 3)


s.out1 <- sim(z.out1, x = x.strong, x1 = x.weak)

summary(s.out1)
