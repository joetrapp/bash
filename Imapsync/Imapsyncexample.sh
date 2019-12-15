#!user

./imapsync \

--host1 ymail.com --authuser1 admin@ymail.com --password1 AUTHUSER \

--user1 user@ymail.com  --ssl1 \

--host2 imap.gmail.com --authuser2 admin@gmail.com --password2 AUTHUSER \

--user2 user@gmail.com --password2 NEWPASSWORD --ssl2  \

# Automap trys to let imapsync figure out as many folders as it can. "INBOX" should be able to port to "inbox". But test first

--timeout 180 --maxsize 100000000 --nofoldersizes --skipsize --fast --automap --addheader --usecache \

# f1f2 is source first mailbox tag, destination second mailbox tag. Used if you want to override the --automap option. Also helpful if somebody has multiple "inboxes"

--f1f2 "INBOX.Sent Messages"="[Gmail]/Sent Mail" \

--f1f2 "INBOX.Drafts"="[Gmail]/Drafts" \

--f1f2 "Trash"="[Gmail]/Trash" \

--f1f2 Archive=Archive \

--f1f2 "INBOX.Archive"=Archive \

--f1f2 "Sent Messages"="[Gmail]/Sent Mail" \

--f1f2 "Deleted Messages"="[Gmail]/Trash" \

--f1f2 "INBOX.Deleted Messages"="[Gmail]/Trash" \

--f1f2 "Sent"="[Gmail]/Sent Mail" \

--f1f2 "INBOX.Junk"="[Gmail]/Trash" \

# Delete options one at a time. Will move folders, then when folders are moved, delete --justfolders option to start mail import

--justfolders --dry
