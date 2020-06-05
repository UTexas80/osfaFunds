# -------------------------------------------------------------------------
# dynamic column index                       # https://tinyurl.com/y7pjxqd6
# -------------------------------------------------------------------------
iEven             <- seq(6, 20, 2)
iOdd              <- seq(7, 53, 2)
# -------------------------------------------------------------------------
paste(as.character(iOdd), collapse = ", ")
# -------------------------------------------------------------------------
# lapply multiple functions                 # https://tinyurl.com/y9hxhq2p
# -------------------------------------------------------------------------
dt_osfa_term[, c(7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29,
  31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53)] <- dt_osfa_term[,
  lapply(dt_osfa_term[, ..iOdd], function(x) {
    as.integer(trimws(gsub("[\\$,]", "", x), "b"))
  })]
# --------------------------------------------------------------------------Sum column every n column in a data frame R
a <- seq(6,21,by=1)
b <- seq(22,37,by=1)
c <- seq(38,53,by=1)
rbind(a,b,c)
add_column <- cbind(a,b,c)

df <- data.frame(replicate(expr=rnorm(100),n = 10))
sapply(seq(1,9,by=2),function(i) rowSums(df[,i:(i+1)]))
# -------------------------------------------------------------------------
# dt_osfa_term[, ..iOdd] <- dt_osfa_term[, lapply(dt_osfa_term[,
#   ..iOdd], function(x) {
#   as.integer(trimws(gsub("[\\$,]", "", x), "b"))
# })]
# --------------------------------------------------------------------------
# i1 <- seq(6, 20, 1) dt_osfa_term_fall_ay <-
# dt_osfa_term_fall[, lapply(.SD, sum, na.rm = TRUE), by =
# AY, .SDcols = i1] dt_osfa_term_fall_ay_fund <-
# dt_osfa_term_fall[, lapply(.SD, sum, na.rm = TRUE), by =
# c('AY','Fund_Code', 'Fund_Title'), .SDcols = i1]
# --------------------------------------------------------------------------
# VERSION HISTORY
# --------------------------------------------------------------------------
a02.version <- "1.0.0"
a02.ModDate <- as.Date("2020-06-02")
# --------------------------------------------------------------------------
# 2020-06-02 - v.1.0.0 1st release
# --------------------------------------------------------------------------
