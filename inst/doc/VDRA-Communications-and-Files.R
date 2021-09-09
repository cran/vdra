## ---- echo = FALSE, warning=FALSE---------------------------------------------
library(knitr)

## ---- echo = FALSE------------------------------------------------------------
kable(data.frame(Protcol = c("\\(2\\)-party", "\\(2^T\\)-party", "\\(k^T\\)-party"),
`Analysis Center` = c("dp0", "dp0", "dp0"),
`Holds response` = c("dp0", "dp1", "dp1"),
`Data partners` = c("dp1", "dp1, dp2", "dp1, dp2, …, dpk")))

## ---- echo = FALSE, message=FALSE, out.width="75%", fig.align='center', fig.pos='H'----
knitr::include_graphics("CommunicationRound.png")

## ---- echo = FALSE------------------------------------------------------------
kable(data.frame(`Write Directory` = c("inputfiles", 
                                       "msoc"),
                `Client Writing files` = c("dp0", 
                                           "dp1, dp2, dp3")),
      caption = "Where each client write files.")

kable(data.frame(`Read Directory` = c("inputfiles", 
                                      "msoc1", 
                                      "msoc2", 
                                      "msoc3"),
                `Client which sent the files` = c("dp0", 
                                                  "dp1", 
                                                  "dp2", 
                                                  "dp3")),
      caption = "Where files from each client are read.")

## ---- echo = FALSE------------------------------------------------------------
kable(data.frame(`file_nm` = c("stats.rdata",
                               "stamps.rdata",
                               "log.rdata",
                               "stats.rdata",
                               "stamps.rdata",
                               "log.rdata",
                               "file_list.csv",
                               "dl_track_tbl.csv"),
                 `transfer_to_site` = c("1",
                                        "1",
                                        "1",
                                        "1",
                                        "1",
                                        "1",
                                        "10",
                                        "10"),
                 `dp_cd_list` = c("1",
                                  "1",
                                  "1",
                                  "2",
                                  "2",
                                  "2",
                                  "10",
                                  "10")), 
      caption = "file_list.csv for sending files from dp0 to both dp1 and dp2.")

## ---- echo = FALSE------------------------------------------------------------
kable(data.frame(`file_nm` = c("dl_track_tbl.csv",
                               "file_list.csv",
                               "job_done.ok"),
                 `transfer_to_site` = c("10","10","10"),
                 `dp_cd_list` = c("10","10","10")), 
      caption = "file_list.csv for dp0 ending the PopMedNet request.")

