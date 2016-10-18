# daniel.brachmann@gmail.com

set from	= "daniel.brachmann@gmail.com"
set sendmail 	= "msmtp -a daniel.brachmann@gmail.com"
set sendmail_wait = 0
set spoolfile = "+daniel.brachmann@gmail.com/INBOX"

# alternates *@fengors-realm.de

mailboxes 	+daniel.brachmann@gmail.com/INBOX \
		+daniel.brachmann@gmail.com/archive \
		+daniel.brachmann@gmail.com/sent \
		+daniel.brachmann@gmail.com/drafts \

set mbox = "+daniel.brachmann@gmail.com/archive"
set postponed = "+daniel.brachmann@gmail.com/drafts"

unset record

color status green default

macro index D \
	"<save-message>+daniel.brachmann@gmail.com/Trash<enter>" \
	"move message to trash"

macro index S \
	"<save-message>+daniel.brachmann@gmail.com/Spam<enter>" \
	"mark message as spam"
