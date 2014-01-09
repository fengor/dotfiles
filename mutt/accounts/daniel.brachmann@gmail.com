# daniel.brachmann@gmail.com

set spoolfile = "+daniel.brachmann@gmail.com/INBOX

alternates *@fengors-realm.de

mailboxes 	+daniel.brachmann@gmail.com/INBOX \
		+daniel.brachmann@gmail.com/archive \
		+daniel.brachmann@gmail.com/sent \
		+daniel.brachmann@gmail.com/drafts \

set mbox = "+daniel.brachmann@gmail.com/archive"
set mbox = "+daniel.brachmann@gmail.com/drafts"

set from	= "daniel.brachmann@gmail.com"
set sendmail 	= "/usr/local/bin/msmtp -a daniel.brachmann@gmail.com"
set sendmail_wait = 0
unset record

