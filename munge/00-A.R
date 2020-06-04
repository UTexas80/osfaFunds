# How Do I in R?
# https://tinyurl.com/y9j67lfk
# --------------------------------------------------------------------------
# checkpoint('2015-01-15') ## or any date in YYYY-MM-DD
# format after 2014-09-17 https://tinyurl.com/yddh54gn
# --------------------------------------------------------------------------
# read command line parameters from an r-script  https://tinyurl.com/y8hzvp5l
# --------------------------------------------------------------------------
args                      <- commandArgs(TRUE)
# --------------------------------------------------------------------------
# Processing Start Time
start.time                <- Sys.time()
syncFileDate              <- format(Sys.Date(), "%Y%m%d")
# --------------------------------------------------------------------------
term_dates                <- seq(as.Date("2019-08-16"), as.Date("2020-05-29"), "day")
x_term_dates              <- xts(1:length(term_dates), term_dates)
x_term_dates              <- x_term_dates[.indexwday(x_term_dates) %in% 5]                                   # date to .xts
# --------------------------------------------------------------------------
dt_term_dates             <- as.data.table(x_term_dates, keep.rownames = TRUE)  # xts to data.table
names(dt_term_dates)[1]   <- "date"
dt_term_dates$date        <- gsub("-", "", dt_term_dates$date)
setkey(dt_term_dates, "date")
# --------------------------------------------------------------------------
# osfa_term_url             <- lapply(dt_term_dates[,1], function(x) paste0(osfa_dashboard, x, osfa_dashboard_ext))
osfa_term_url             <- sapply(dt_term_dates[,1], function(x) paste0(osfa_dashboard, x, osfa_dashboard_ext))
# --------------------------------------------------------------------------
dt_url                    <- as.data.table(osfa_term_url)
names(dt_url)[1]          <- "url"
## force use of a token associated with a specific email
drive_auth(email   = "gfalk@uga.edu",
           cache   = gargle::gargle_oauth_cache(),
           use_oob = gargle::gargle_oob_default())
# --------------------------------------------------------------------------
gdrive_term_fund          <- read_sheet(ss = gdrive_dashboard, sheet = "Banner Fund II")
# --------------------------------------------------------------------------
file_name                 <- c('gdrive')
file_desc                 <- c("term funds old")
file_count                <- nrow(gdrive_term_fund)
# -------------------------------------------------------------------------- https://tinyurl.com/yahjflfv
dt_download               <- as.data.table(data.frame(file_name, file_desc, file_count, stringsAsFactors = FALSE))
print(paste0("gdrive term funds old = ", "", nrow(gdrive_term_fund)))
# -------------------------------------------------------------------------- https://tinyurl.com/y7kvlyoo
dt_osfa_term <- data.table::rbindlist(
  lapply(osfa_term_url[-c(16),], data.table::fread, showProgress = TRUE, fill = TRUE, header = FALSE)
)
# -------------------------------------------------------------------------- https://tinyurl.com/y6o5wnay
names(dt_osfa_term)[1:57] <- dt_osfa_term_headings[]                         # Adding columns to a data table

# -------------------------------------------------------------------------- https://tinyurl.com/y3fk87wk
# osfa_term_download  <- do.call(rbind,
#     lapply(osfa_term_url,function(i){
#         read.csv(i, header = FALSE)
#         }
#       )
#     )
# --------------------------------------------------------------------------
# dt_osfa_term              <-  data.table::rbindlist(
#                                 lapply(osfa_term_url,function(i){
#                                   fread(i, header = FALSE)
#                                   }
#                                 )
#                               )
# --------------------------------------------------------------------------
# osfa_funds_url  <- paste(osfa_funds_url, ".csv", sep = syncFileDate)
# --------------------------------------------------------------------------
# osfa_funds      <- fread(osfa_funds_url)
# gdrive_funds    <- read_sheet(ss = gdrive_dashboard, sheet = "Banner Fund II")
# --------------------------------------------------------------------------
# print(paste0("gdrive funds old = ", "", nrow(gdrive_funds)))
# print(paste0("osfa funds  = ", "", nrow(osfa_funds)))
# --------------------------------------------------------------------------
# googlesheets4::sheet_write(osfa_funds, gdrive_dashboard, sheet = "funds")
# --------------------------------------------------------------------------
# gdrive_funds    <- read_sheet(ss = gdrive_dashboard, sheet = "Banner Fund")
# print(paste0("gdrive funds new = ", "", nrow(gdrive_funds)))
# --------------------------------------------------------------------------
# VERSION HISTORY
# --------------------------------------------------------------------------
a00.version     <- "1.0.0"
a00.ModDate     <- as.Date("2019-07-01")
# --------------------------------------------------------------------------
# 2019.07.01 - v.1.0.0 1st release
