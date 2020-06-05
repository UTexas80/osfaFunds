
# --------------------------------------------------------------------------
dt_osfa_term_fall <- dt_osfa_term[order(AY, Fund_Code), c(1:21)]
# --------------------------------------------------------------------------
# dynamic column index                        # https://tinyurl.com/y7pjxqd6
#  -------------------------------------------------------------------------
iEven <- seq(6, 20, 2)
iOdd   <- seq(7, 53, 2)
paste(as.character(iOdd), collapse = ", ")
dt_osfa_term[, ..iOdd]
# --------------------------------------------------------------------------
# lapply multiple functions                   # https://tinyurl.com/y9hxhq2p
#  -------------------------------------------------------------------------
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
# --------------------------------------------------------------------------
a02.version <- "1.0.0"
a02.ModDate <- as.Date("2020-06-02")
# --------------------------------------------------------------------------
# 2020-06-02 - v.1.0.0 1st release
# --------------------------------------------------------------------------
