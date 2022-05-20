
### Data Connections
### Date Created: 5/29/2020
### Author: Daniel Shields daniel.shields@abbott.com
### Notes: Users must have a folder in their OneDrive named LoginInfo with various UID/PWD .txt files as specified below

### Updated: 03/21/2022 (daniel.shields@abbott.com) - setting the working directory to the users 511 Onedrive/LoginInfo
###           Folder + Removing OLAPR Connections to Cubes

###carly edit comment
library(readtext)


#get the user's 511 ID and set the working directory to their OneDrive/LoginInfo Folder
sysUser511 <- Sys.getenv("username")
setwd(paste("C:/Users/", sysUser511, "/OneDrive - Abbott/LoginInfo", sep = ""))

#get UIDs and Passwords for the various machines we're wanting to connect to.
uid <- readtext("SandboxDB__UID.txt")$text
pwd <- readtext("SandboxDB__PWD.txt")$text
uid2 <- readtext("Cube_UID.txt")$text
uidBOA <- readtext("BOADB__UID.txt")$text
pwdBOA <- readtext("BOADB__PWD.txt")$text
WalgreensUID <- readtext("Walgreens_UID.txt")$text
WalgreensPWD <- readtext("Walgreens_PWD.txt")$text
VendorCentralUID <- readtext("VendorCentral_UID.txt")$text
VendorCentralPWD <- readtext("VendorCentral_PWD.txt")$text
EdgeUID <- readtext("Edge_UID.txt")$text
EdgePWD <- readtext("Edge_PWD.txt")$text

#odbc connection string for the Retail Velocity Cube

odbcConnStr <- paste0("Driver={ODBC Driver 17 for SQL Server};
                 Server=tcp:abt-sqlmi03-test.public.14690b0458e7.database.windows.net,3342;
                 database=AbbottSandbox;
                 Uid={", uid, "};
                 Pwd={", pwd, "};
                 Encrypt=yes;
                 TrustServerCertificate=no;
                 Connection Timeout=1000;
                 Authentication=ActiveDirectoryPassword;")



#odbc connection string for the Abbott ANPD MI Data Analytics BOA (Business Owned Area)

odbcConnStrBOA <- paste0("Driver={ODBC Driver 17 for SQL Server};
                 Server=azp02ads.database.windows.net;
                 database=azp05atp;
                 Uid={", uidBOA, "};
                 Pwd={", pwdBOA, "};
                 Encrypt=yes;
                 TrustServerCertificate=no;
                 Connection Timeout=1000;
                 Authentication=ActiveDirectoryPassword;")




# #olapR connection strings - unused (as of 3/21/2022) due to unsuportability of OLAPR package.
# #AbbottCube
# olapRConnStrA<- paste0("Provider=MSOLAP;
#                 Persist Security Info=True;
#                 Persist Encrypted = True;
#                 Data Source=asazure://northcentralus.asazure.windows.net/rioas;
#                 MDX Missing Member Mode=Ignore;
#                 Initial Catalog=AbbottCube;
#                 Update Isolation Level=2;
#                 User ID=", uid2, ";")
# #KrogerWeeklyCube
# olapRConnStrKW <- paste0("Provider=MSOLAP;
#                 Persist Security Info=True;
#                 Persist Encrypted = True;
#                 Data Source=asazure://northcentralus.asazure.windows.net/rioas;
#                 MDX Missing Member Mode=Ignore;
#                 Initial Catalog=KrogerWeeklyCube;
#                 Update Isolation Level=2;
#                 User ID=", uid2, ";")
