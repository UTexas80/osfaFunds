# Example preprocessing script.  How Do I in R?
# https://tinyurl.com/y9j67lfk
# --------------------------------------------------------------------------
# checkpoint('2015-01-15') ## or any date in YYYY-MM-DD
# format after 2014-09-17 https://tinyurl.com/yddh54gn
# --------------------------------------------------------------------------
# read command line parameters from an r-script  https://tinyurl.com/y8hzvp5l
args            <- commandArgs(TRUE)
# --------------------------------------------------------------------------
# Processing Start Time
start.time      <- Sys.time()
syncFileDate    <- format(Sys.Date(), "%Y%m%d")
# --------------------------------------------------------------------------
## force use of a token associated with a specific email
drive_auth(email   = "gfalk@uga.edu",
           cache   = gargle::gargle_oauth_cache(),
           use_oob = gargle::gargle_oob_default())
# --------------------------------------------------------------------------
osfa_counts_url <- paste(osfa_counts_url, ".csv", sep = syncFileDate)
# --------------------------------------------------------------------------
osfa_counts     <- fread(osfa_counts_url)
gdrive_counts   <- read_sheet(ss = gdrive_dashboard, sheet = "Counts")
# --------------------------------------------------------------------------
print(paste0("gdrive counts old = ", "", nrow(gdrive_counts)))
print(paste0("osfa counts  = ", "", nrow(osfa_counts)))
# --------------------------------------------------------------------------
googlesheets4::sheet_write(osfa_counts, gdrive_dashboard, sheet = "Counts")
# --------------------------------------------------------------------------
gdrive_counts   <- read_sheet(ss = gdrive_dashboard, sheet = "Counts")
print(paste0("gdrive counts new = ", "", nrow(gdrive_counts)))
# --------------------------------------------------------------------------
osfa_funds_url  <- paste(osfa_funds_url, ".csv", sep = syncFileDate)
# --------------------------------------------------------------------------
osfa_funds      <- fread(osfa_funds_url)
gdrive_funds    <- read_sheet(ss = gdrive_dashboard, sheet = "Banner Fund")
# --------------------------------------------------------------------------
print(paste0("gdrive funds old = ", "", nrow(gdrive_funds)))
print(paste0("osfa funds  = ", "", nrow(osfa_funds)))
# --------------------------------------------------------------------------
googlesheets4::sheet_write(osfa_funds, gdrive_dashboard, sheet = "funds")
# --------------------------------------------------------------------------
gdrive_funds    <- read_sheet(ss = gdrive_dashboard, sheet = "Banner Fund")
print(paste0("gdrive funds new = ", "", nrow(gdrive_funds)))
# --------------------------------------------------------------------------
# VERSION HISTORY
a00.version     <- "1.0.0"
a00.ModDate     <- as.Date("2019-07-01")
# --------------------------------------------------------------------------
# 2019.07.01 - v.1.0.0 1st release
