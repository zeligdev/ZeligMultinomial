library(multivariate.zelig)

data(mexico)

z.out1 <- zelig(as.factor(vote88) ~ pristr + othcok + othsocok, model = "mlogit", 
               data = mexico)
summary(z.out1)


x.weak <- setx(z.out1, pristr = 1)
x.strong <- setx(z.out1, pristr = 3)


s.out1 <- sim(z.out1, x = x.strong, x1 = x.weak)

summary(s.out1)



ev.weak <- s.out1$qi$ev1 + s.out1$qi$fd


#ternaryplot(s.out1$qi$ev, pch = ".", col = "blue",
#            main = "1988 Mexican Presidential Election")

#ternarypoints(ev.weak, pch = ".", col = "red")


# Specifying different sets of explanatory variables for each factor level
z.out2 <- zelig(list(id(vote88,"1")~pristr + othcok, id(vote88,"2")~othsocok), model = "mlogit", 
               data = mexico)
print(summary(z.out2))

x.weak <- setx(z.out2, pristr = 1)
x.strong <- setx(z.out2, pristr = 3)


s.out2 <- sim(z.out2, x = x.strong, x1 = x.weak)


print(summary(s.out2))


ev.weak <- s.out2$qi$ev1 + s.out2$qi$fd

#ternaryplot(s.out2$qi$ev, pch = ".", col = "blue",
#            main = "1988 Mexican Presidential Election")
#user.prompt()
#ternarypoints(ev.weak, pch = ".", col = "red")
