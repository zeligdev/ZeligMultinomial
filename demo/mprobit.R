# demo with a standard formula

data(japan)

z.out1 <- zelig(
                cbind(LDP, NFP, SKG, JCP) ~ gender + education + age,
                data = japan,
                verbose = TRUE,
                model = "mprobit"
                )

# set explanatory variables
x.out1 <- setx(z.out1)

# simulated quantities of interest
s.out1 <- sim(z.out1, x=x.out1, num=500)

# output summaries
summary(z.out1)
summary(s.out1)


# demo alternative formula definition

data(detergent)

z.out2 <- zelig(
                choice ~ 1,
                data = detergent,
                choiceX = list(
                               Surf = SurfPrice,
                               Tide = TidePrice,
                               Wisk = WiskPrice,
                               EraPlus = EraPlusPrice,
                               Solo = SoloPrice,
                               All = AllPrice
                               ),
                cXnames = "price",
                n.draws = 500,
                burnin = 100,
                thin = 3,
                verbose = TRUE,
                model = "mprobit"
                )

# set explanatory variables
x.out2 <- setx(z.out2)

# simulate quantities of interest
s.out2 <- sim(z.out2, x = x.out2, num=500)

# output summaries
summary(z.out2)
summary(s.out2)
