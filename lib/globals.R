# Add any project specific configuration here.
add.config(
  apply.override = FALSE,
  currentYr = as.numeric(format(Sys.Date(), format="%y")),
  currentYr4 = as.numeric(format(Sys.Date(), format="%Y")),
  lastYr = as.numeric(format(Sys.Date(), format="%y")) - 1,
  LastYr4 = as.numeric(format(Sys.Date(), format="%Y"))-1,
  currentAY = as.numeric(paste(as.numeric(format(Sys.Date(), format="%y")) - 1, as.numeric(format(Sys.Date(), format="%y")), sep = "")),
  header = "Google Sync" # header in reports
)
# --------------------------------------------------------------------------
gdrive_dashboard    <- drive_get(id = "1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo")
osfa_counts_url     <- "http://apps.osfa.uga.edu/decrypt.php?path=Banner/Argos/Dashboard_Data/OSFA%20Counts_"
osfa_funds_url      <- "http://apps.osfa.uga.edu/decrypt.php?path=Banner/Argos/Dashboard_Data/OSFA%20Funds_"
onedrive_url        <- "https://excel.officeapps.live.com/x/_layouts/XlFileHandler.aspx?WacUserType=WOPI&usid=c64cc810-ee51-428d-b18f-345a147afceb&NoAuth=1&waccluster=US6"
onedrive_dashboard  <- "https://outlookuga-my.sharepoint.com/:x:/g/personal/rtucker_uga_edu/EVUuFydfCEpCgY4CL1nUnQcBWpZLBLGLKa88Q1bTX6A-OA?email=gfalk%40uga.edu&e=4%3aWEwiwo&at=9"
odfb_dashboard      <- "https://outlookuga-my.sharepoint.com/:x:/r/personal/rtucker_uga_edu/Documents/OSFA%20Data.xlsx?d=w27172e55085f424a818e022f59d49d07&csf=1"
# --------------------------------------------------------------------------
# email specific variables                           https://wp.me/pamNUf-Eh
# --------------------------------------------------------------------------
meMail <- 'gfalk@uga.edu'
# --------------------------------------------------------------------------
# Add project specific configuration that can be overridden from load.project()
# --------------------------------------------------------------------------
add.config(
  apply.override = TRUE
)
