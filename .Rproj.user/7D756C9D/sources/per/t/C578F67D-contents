### Azure SQL Server SQL, Azure SSAS Cube MDX, Connecting with R Lunch and Learn
### Data Connections
### Date Created: 5/29/2020
### Author: Daniel Shields daniel.shields@abbott.com

library(readtext)
library(odbc)
#library(olapR)

#UID's and PWD's from files 
#modify to point to your files
uid <- readtext(
  "C:/Users/shieldx1/OneDrive - Abbott/LoginInfo/SandboxDB__UID.txt")$text
pwd <- readtext(
  "C:/Users/shieldx1/OneDrive - Abbott/LoginInfo/SandboxDB__PWD.txt")$text
uid2 <- readtext(
  "C:/Users/shieldx1/OneDrive - Abbott/LoginInfo/Cube_UID.txt")$text
uidBOA <- readtext(
  "C:/Users/shieldx1/OneDrive - Abbott/LoginInfo/BOADB__UID.txt")$text
pwdBOA <- readtext(
  "C:/Users/shieldx1/OneDrive - Abbott/LoginInfo/BOADB__PWD.txt")$text

#odbc connection string
odbcConnStr <- paste0("Driver={ODBC Driver 17 for SQL Server};
                 Server=tcp:abt-sqlmi03-test.public.14690b0458e7.database.windows.net,3342;
                 database=AbbottSandbox;
                 Uid={", uid, "};
                 Pwd={", pwd, "};
                 Encrypt=yes;
                 TrustServerCertificate=no;
                 Connection Timeout=1000;
                 Authentication=ActiveDirectoryPassword;")

# #odbc connection from DSN
# odbcConnStr2 <- dbConnect(odbc::odbc(), "SQLSandbox", 
#                           Driver = "SQL Server", 
#                           UID = uid, 
#                           PWD = pwd, 
#                           timeout = 10)

odbcConnStrBOA <- paste0("Driver={ODBC Driver 17 for SQL Server};
                 Server=azp02ads.database.windows.net;
                 database=azp05atp;
                 Uid={", uidBOA, "};
                 Pwd={", pwdBOA, "};
                 Encrypt=yes;
                 TrustServerCertificate=no;
                 Connection Timeout=1000;
                 Authentication=ActiveDirectoryPassword;")
#olapR connection strings
#modify the inital catalog if connecting to another cube
#AbbottCube
olapRConnStrA<- paste0("Provider=MSOLAP;
                Persist Security Info=True;
                Persist Encrypted = True;
                Data Source=asazure://northcentralus.asazure.windows.net/rioas;
                MDX Missing Member Mode=Ignore;
                Initial Catalog=AbbottCube;
                Update Isolation Level=2;
                User ID=", uid2, ";")
#KrogerWeeklyCube
olapRConnStrKW <- paste0("Provider=MSOLAP;
                Persist Security Info=True;
                Persist Encrypted = True;
                Data Source=asazure://northcentralus.asazure.windows.net/rioas;
                MDX Missing Member Mode=Ignore;
                Initial Catalog=KrogerWeeklyCube;
                Update Isolation Level=2;
                User ID=", uid2, ";")
#NielsenMarketSubtotal
olapRConnStrNSubT <- paste0("Provider=MSOLAP;
                Persist Security Info=True;
                Persist Encrypted = True;
                Data Source=asazure://northcentralus.asazure.windows.net/rioas;
                MDX Missing Member Mode=Ignore;
                Initial Catalog=NielsenMarketSubtotal;
                Update Isolation Level=2;
                User ID=", uid2, ";")
#NielsenMarketUPC
olapRConnStrNUPC <- paste0("Provider=MSOLAP;
                Persist Security Info=True;
                Persist Encrypted = True;
                Data Source=asazure://northcentralus.asazure.windows.net/rioas;
                MDX Missing Member Mode=Ignore;
                Initial Catalog=NielsenMarketUPC;
                Update Isolation Level=2;
                User ID=", uid2, ";")

