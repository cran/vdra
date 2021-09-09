## ---- echo = FALSE, warning=FALSE---------------------------------------------
library(knitr)

## ---- echo = FALSE, message=FALSE, out.width="75%", fig.align='center', fig.pos='H'----
knitr::include_graphics("2party.png")

## ---- echo = FALSE, message=FALSE, out.width="75%", fig.align='center', fig.pos='H'----
knitr::include_graphics("2Tparty.png")

## ---- echo = FALSE, message=FALSE, out.width="75%", fig.align='center', fig.pos='H'----
knitr::include_graphics("kTparty.png")

## ---- echo = FALSE------------------------------------------------------------
kable(data.frame(`Variable(s)` = c("Change_BMI", 
                                   "WtLost", 
                                   "Time, Status"),
                 `Intended Use` = c("Linear Regression", 
                                    "Logistic Regression",
                                    "Cox Regression")))

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  if (!dir.exists("~/vdra")) dir.create("~/vdra")
#  pmn(2, "~/vdra")

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = AnalysisCenter.2Party(regression    = "linear",
#                              data          = vdra_data[, c(1, 5:7)],
#                              response      = "Change_BMI",
#                              monitorFolder = "~/vdra/dp0",
#                              popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner.2Party(regression    = "linear",
#                           data          = vdra_data[, 8:11],
#                           monitorFolder = "~/vdra/dp1",
#                           popmednet     = FALSE)
#  summary(fit)

## ----echo=FALSE---------------------------------------------------------------
library(vdra)
summary(vdra_fit_linear_A)

## -----------------------------------------------------------------------------
fit = lm(Change_BMI ~ ., vdra_data[, c(1, 5:11)])
summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  if (!dir.exists("~/vdra")) dir.create("~/vdra")
#  pmn(2, "~/vdra")

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = AnalysisCenter.2Party(regression    = "logistic",
#                              data          = vdra_data[, c(2, 5:7)],
#                              response      = "WtLost",
#                              monitorFolder = "~/vdra/dp0",
#                              popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner.2Party(regression    = "logistic",
#                           data          = vdra_data[, 8:11],
#                           monitorFolder = "~/vdra/dp1",
#                           popmednet     = FALSE)
#  summary(fit)

## ----echo=FALSE---------------------------------------------------------------
library(vdra)
summary(vdra_fit_logistic_A)

## -----------------------------------------------------------------------------
fit = glm(WtLost ~ ., vdra_data[c(2, 5:11)], family = binomial)
summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  if (!dir.exists("~/vdra")) dir.create("~/vdra")
#  pmn(2, "~/vdra")

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = AnalysisCenter.2Party(regression    = "cox",
#                              data          = vdra_data[, c(3:4, 5:7)],
#                              response      = c("Time", "Status"),
#                              monitorFolder = "~/vdra/dp0",
#                              popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner.2Party(regression    = "cox",
#                           data          = vdra_data[, 8:11],
#                           monitorFolder = "~/vdra/dp1",
#                           popmednet     = FALSE)
#  summary(fit)

## ----echo=FALSE---------------------------------------------------------------
summary(vdra_fit_cox_A)

## -----------------------------------------------------------------------------
library(survival)
fit = coxph(Surv(Time, Status) ~ ., data = vdra_data[, 3:11])
summary(fit)            

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  if (!dir.exists("~/vdra")) dir.create("~/vdra")
#  pmn(3, "~/vdra")

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = AnalysisCenter.3Party(regression    = "linear",
#                              monitorFolder = "~/vdra/dp0",
#                              popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner1.3Party(regression    = "linear",
#                            data          = vdra_data[, c(1, 5:7)],
#                            response      = "Change_BMI",
#                            monitorFolder = "~/vdra/dp1",
#                            popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner2.3Party(regression    = "linear",
#                            data          = vdra_data[, 8:11],
#                            monitorFolder = "~/vdra/dp2",
#                            popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  if (!dir.exists("~/vdra")) dir.create("~/vdra")
#  pmn(3, "~/vdra")

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = AnalysisCenter.3Party(regression    = "logistic",
#                              monitorFolder = "~/vdra/dp0",
#                              popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner1.3Party(regression    = "logistic",
#                            data          = vdra_data[, c(2, 5:7)],
#                            response      = "WtLost",
#                            monitorFolder = "~/vdra/dp1",
#                            popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner2.3Party(regression    = "logistic",
#                            data          = vdra_data[, 8:11],
#                            monitorFolder = "~/vdra/dp2",
#                            popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  if (!dir.exists("~/vdra")) dir.create("~/vdra")
#  pmn(3, "~/vdra")

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = AnalysisCenter.3Party(regression    = "cox",
#                              monitorFolder = "~/vdra/dp0",
#                              popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner1.3Party(regression    = "cox",
#                            data          = vdra_data[, c(3:4, 5:7)],
#                            response      = c("Time", "Status"),
#                            monitorFolder = "~/vdra/dp1",
#                            popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner2.3Party(regression    = "cox",
#                            data          = vdra_data[, 8:11],
#                            monitorFolder = "~/vdra/dp2",
#                            popmednet     = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  if (!dir.exists("~/vdra")) dir.create("~/vdra")
#  pmn(3, "~/vdra")

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = AnalysisCenter.KParty(regression      = "linear",
#                              numDataPartners = 2,
#                              monitorFolder   = "~/vdra/dp0",
#                              popmednet       = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner.KParty(regression      = "linear",
#                           data            = vdra_data[, c(1, 5:7)],
#                           response        = "Change_BMI",
#                           numDataPartners = 2,
#                           dataPartnerID   = 1,
#                           monitorFolder   = "~/vdra/dp1",
#                           popmednet       = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner.KParty(regression      = "linear",
#                           data            = vdra_data[, 8:11],
#                           numDataPartners = 2,
#                           dataPartnerID   = 2,
#                           monitorFolder   = "~/vdra/dp2",
#                           popmednet       = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  if (!dir.exists("~/vdra")) dir.create("~/vdra")
#  pmn(3, "~/vdra")

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = AnalysisCenter.KParty(regression      = "logistic",
#                              numDataPartners = 2,
#                              monitorFolder   = "~/vdra/dp0",
#                              popmednet       = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner.KParty(regression      = "logistic",
#                           data            = vdra_data[, c(2, 5:7)],
#                           response        = "WtLost",
#                           numDataPartners = 2,
#                           dataPartnerID   = 1,
#                           monitorFolder   = "~/vdra/dp1",
#                           popmednet       = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner.KParty(regression      = "logistic",
#                           data            = vdra_data[, 8:11],
#                           numDataPartners = 2,
#                           dataPartnerID   = 2,
#                           monitorFolder   = "~/vdra/dp2",
#                           popmednet       = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  if (!dir.exists("~/vdra")) dir.create("~/vdra")
#  pmn(3, "~/vdra")

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = AnalysisCenter.KParty(regression      = "cox",
#                              numDataPartners = 2,
#                              monitorFolder   = "~/vdra/dp0",
#                              popmednet       = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner.KParty(regression      = "cox",
#                           data            = vdra_data[, c(3:4, 5:7)],
#                           response        = c("Time", "Status"),
#                           numDataPartners = 2,
#                           dataPartnerID   = 1,
#                           monitorFolder   = "~/vdra/dp1",
#                           popmednet       = FALSE)
#  summary(fit)

## ----eval=FALSE---------------------------------------------------------------
#  library(vdra)
#  fit = DataPartner.KParty(regression      = "cox",
#                           data            = vdra_data[, 8:11],
#                           numDataPartners = 2,
#                           dataPartnerID   = 2,
#                           monitorFolder   = "~/vdra/dp2",
#                           popmednet       = FALSE)
#  summary(fit)

## -----------------------------------------------------------------------------
library(vdra)
fit1 = differentModel(Age ~ ., vdra_fit_linear_A)
summary(fit1)

fit2 = differentModel(Change_BMI ~ Exposure + Age, vdra_fit_linear_A)
summary(fit2)

fit3 = differentModel(Change_BMI ~ Exposure, vdra_fit_linear_A)
summary(fit3)

fit4 = differentModel(Change_BMI ~ Exposure + Age + `Sex:M` + `Race:Race 1`, vdra_fit_linear_A)
summary(fit4)

## ---- out.width="75%", fig.width=6, fig.height=6------------------------------
HoslemTest(vdra_fit_logistic_A)
HoslemTest(vdra_fit_logistic_A, 50)
RocTest(vdra_fit_logistic_A)
RocTest(vdra_fit_logistic_A, 50)

## ---- out.width="75%", fig.width=6, fig.height=6------------------------------
sf = survfitDistributed(vdra_fit_cox_A)
print(sf)
plot(sf)

# Calculate the results based on strat that the data partner with the response holds
sf = survfitDistributed(vdra_fit_cox_A, ~ Exposure, data = vdra_data[c(3:4, 5:7)])
print(sf)

# plot both curves in the same plot
plot(sf, xlim = c(0, 400), ylim = c(0, 1), 
         xlab = "Time to Event", ylab = "Survival Percentage", 
         main = "BMI Study")

# plot curves in two different plots.
plot(sf, merge = FALSE)

