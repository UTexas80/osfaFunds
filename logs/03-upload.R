
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
a03.version     <- "1.0.0"
a03.ModDate     <- as.Date("2020-06-03")
# --------------------------------------------------------------------------
# 2020.06.03 - v.1.0.0 1st release
