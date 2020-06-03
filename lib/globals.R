# Add any project specific configuration here.
add.config(
  apply.override = FALSE,
  currentYr = as.numeric(format(Sys.Date(), format="%y")),
  currentYr4 = as.numeric(format(Sys.Date(), format="%Y")),
  lastYr = as.numeric(format(Sys.Date(), format="%y")) - 1,
  LastYr4 = as.numeric(format(Sys.Date(), format="%Y"))-1,
  currentAY = as.numeric(paste(as.numeric(format(Sys.Date(), format="%y")) - 1, as.numeric(format(Sys.Date(), format="%y")), sep = "")),
  header = "osfa funds term data" # header in reports
)
# --------------------------------------------------------------------------
gdrive_dashboard   <- drive_get(id = "1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo")
# --------------------------------------------------------------------------
osfa_dashboard     <- "http://apps.osfa.uga.edu/decrypt.php?path=Banner/Argos/Dashboard_Data/OSFA%20FUNDS%20-%20TERM%20DATA_"
osfa_dashboard_ext <- ".csv.gpg"
# --------------------------------------------------------------------------

dt_osfa_term_headings   <- c("Date", "AY", "Fund_Code", "Fund_Title", "Fund_Title_Long", "Fall_Original_Offers_Count",
"Fall_Original_Offers_Amount", "Fall_Current_Offered_Count", "Fall_Current_Offered_Amount", "Fall_Offered_Count",
"Fall_Offered_Amount", "Fall_Accepted_Count", "Fall_Accepted_Amount", "Fall_Original_Declined_Count", "Fall_Declined_Amount",
"Fall_Cancelled_Count", "Fall_Cancelled_Amount", "Fall_Authorized_Count", "Fall_Authorized_Amount", "Fall_Paid_Count",
"Fall_Paid_Amount", "Spring_Original_Offers_Count", "Spring_Original_Offers_Amount", "Spring_Current_Offered_Count",
"Spring_Current_Offered_Amount", "Spring_Offered_Count", "Spring_Offered_Amount", "Spring_Accepted_Count", "Spring_Accepted_Amount",
"Spring_Original_Declined_Count", "Spring_Declined_Amount", "Spring_Cancelled_Count", "Spring_Cancelled_Amount", "Spring_Authorized_Count",
"Spring_Authorized_Amount", "Spring_Paid_Count", "Spring_Paid_Amount", "Summer_Original_Offers_Count", "Summer_Original_Offers_Amount",
"Summer_Current_Offered_Count", "Summer_Current_Offered_Amount", "Summer_Offered_Count", "Summer_Offered_Amount", "Summer_Accepted_Count",
"Summer_Accepted_Amount", "Summer_Original_Declined_Count", "Summer_Declined_Amount", "Summer_Cancelled_Count", "Summer_Cancelled_Amount",
"Summer_Authorized_Count", "Summer_Authorized_Amount", "Summer_Paid_Count", "Summer_Paid_Amount", "Fund_Type", "Fund_Source", 
"Federal_Fund_ID", "Fund_Cross_Reference")
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
