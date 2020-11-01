## demographic table
library(qwraps2)
orig_opt<-options()$qwraps2_markup
options(qwraps2_markup="markdown")
summary <-
  list(
    "Age" =
      list(
        "mean(sd)"= ~ qwraps2::mean_sd (age2014),
        "min" = ~ min(age2016.x),
        "max" = ~ max(age2016.x)
      ),
    "Gender" =
      list(
        "female" = ~ qwraps2::n_perc(gender2014 %in% "0"),
        "male" = ~ qwraps2::n_perc(gender2014 %in% "1")
      ),
    "Marital status" =
      list(
        "Single/divorced/widowed" = ~ qwraps2::n_perc(mari2014 %in% "0"),
        "Married/cohabit" = ~ qwraps2::n_perc(mari2014 %in% "1")
      ),
    "Party" =
      list(
        "No" = ~qwraps2::n_perc(party2014 %in% "0"),
        "Yes"= ~qwraps2::n_perc(party2014 %in% "1")
      ),
    "Self-rated health" =
      list(
        "mean(sd)"= ~ qwraps2::mean_sd (healself2014),
        "min" = ~ min(healself2014),
        "max" = ~ max(healself2014)
      ),
    "Self-rated income status" =
      list(
        "mean(sd)" = ~ qwraps2::mean_sd(incoself2014),
        "min" = ~ min(incoself2014),
        "max" = ~ max(incoself2014)
      ),
    "Education" =
      list(
        "mean(sd)" = ~ qwraps2::mean_sd(eduy2014),
        "min" = ~ min(eduy2014),
        "max" = ~ max(eduy2014)
      ),
    "IADL" =
      list(
        "No" = ~ qwraps2::n_perc(iadl_2014 %in% "0"),
        "Yes" = ~ qwraps2::n_perc(iadl_2014 %in% "1")
      ),
    "Cognitive function" =
      list(
        "mean(sd)" = ~ qwraps2::mean_sd(cognitive2014),
        "min" = ~ min(cognitive2014),
        "max" = ~ max(cognitive2014)
      ),
      "Life satisfaction2014" =
          list(
            "mean(sd)" = ~ qwraps2::mean_sd(lifesatis2014),
            "min" = ~ min(lifesatis2014),
            "max" = ~ max(lifesatis2014)
      ),
    "Life satisfaction2016" =
      list(
        "mean(sd)" = ~ qwraps2::mean_sd(lifesatis2016),
        "min" = ~ min(lifesatis2016),
        "max" = ~ max(lifesatis2016)
      ),
    "Confidence 2014" =
      list(
        "mean(sd)" = ~ qwraps2::mean_sd(confidence2014),
        "min" = ~ min(confidence2014),
        "max" = ~ max(confidence2014)
      ),
    "Confidence 2016" =
      list(
        "mean(sd)" = ~ qwraps2::mean_sd(confiden2016),
        "min" = ~ min(confiden2016),
        "max" = ~ max(confiden2016)
      ),
    "Depress 2014" =
      list(
        "mean(sd)" = ~ qwraps2::mean_sd(depress2014),
        "min" = ~ min(depress2014),
        "max" = ~ max(depress2014)
      ),
    "Depress 2016" =
      list(
        "mean(sd)" = ~ qwraps2::mean_sd(depress),
        "min" = ~ min(depress),
        "max" = ~ max(depress)
      )
  )
table1<-summary_table(dplyr::group_by(mergedata1416_urban_nu,internetgroup2016),summary)
table2<-summary_table(dplyr::group_by(mergedata1416_urban_nu.match,internetgroup2016),summary)
table<-cbind(table1,table2)
