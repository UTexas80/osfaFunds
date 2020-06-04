
# --------------------------------------------------------------------------
dt_osfa_term_fall <- dt_osfa_term[order(AY, Fund_Code), c(1:21)]
# --------------------------------------------------------------------------lapply
# Multiple functions
iOdd <- seq(7, 21, 2)  # https://tinyurl.com/y9hxhq2p
iEven <- seq(6, 20, 2)
dt_osfa_term_fall[, c(7, 9, 11, 13, 15, 17, 19, 21)] <- dt_osfa_term_fall[,
  lapply(dt_osfa_term_fall[, c(7, 9, 11, 13, 15, 17, 19, 21)],
    function(x) {
      as.integer(trimws(gsub("[\\$,]", "", x), "b"))
    })]
# --------------------------------------------------------------------------
i1 <- seq(6, 20, 1)
dt_osfa_term_fall_ay <- dt_osfa_term_fall[, lapply(.SD, sum,
  na.rm = TRUE), by = AY, .SDcols = i1]
dt_osfa_term_fall_ay_fund <- dt_osfa_term_fall[, lapply(.SD, sum,
  na.rm = TRUE), by = c("AY","Fund_Code", "Fund_Title"), .SDcols = i1]
# --------------------------------------------------------------------------
# VERSION HISTORY
a01.version <- "1.0.0"
a01.ModDate <- as.Date("2020-02-28")
# --------------------------------------------------------------------------
