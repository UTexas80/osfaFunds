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
# --------------------------------------------------------------------------
# Sum column every n column in a data frame R   https://tinyurl.com/yba3qq5f
# --------------------------------------------------------------------------
a <- c(
  "tot_Original_Offers_Count",
  "tot_Original_Offers_Amount",
  "tot_Current_Offered_Count",
  "tot_Current_Offered_Amount",
  "tot_Offered_Count",
  "tot_Offered_Amount",
  "tot_Accepted_Count",
  "tot_Accepted_Amount",
  "tot_Original_Declined_Count",
  "tot_Declined_Amount",
  "tot_Cancelled_Count",
  "tot_Cancelled_Amount",
  "tot_Authorized_Count",
  "tot_Authorized_Amount",
  "tot_Paid_Count",
  "tot_Paid_Amount"
)
b <- seq(6,21,  by = 1)
c <- seq(22,37, by = 1)
d <- seq(38,53, by = 1)

rbind(a,b,c)
add_column <- cbind(a,b,c,d)
m <- cbind(b,c,d)
# --------------------------------------------------------------------------
# converting multiple columns from character to numeric format in r
# https://tinyurl.com/ybm2xfht
# --------------------------------------------------------------------------
df <- as.data.table(add_column)
dt <- df %>%
  select(-a) %>% # this removes the alpha column if all your character columns need converted to numeric
  mutate_if(is.character,as.numeric)
dt_add_column <- data.table(cbind(df[,1],dt))
# --------------------------------------------------------------------------
# Sum column every n column in a data frame R
# https://tinyurl.com/yba3qq5f
# --------------------------------------------------------------------------
mapply(function(x) {lapply(dt_add_column[,..x], function(j) {g <<- as.matrix(A[,..j]) })}, seq(2,4, by = 1))

df <- data.frame(replicate(expr = rnorm(100),n = 10))
sapply(seq(1,9, by = 2),function(i) rowSums(df[,i:(i + 1)]))
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
