@echo off

IF %1.==. GOTO NoURL
set defaultQuality=best
set chat=false
set quality=false
set url=%1
IF not x%2==xchat (
	IF not %2.==. set quality=%2
)
IF x%2==xchat set chat=true
IF x%3==xchat set chat=true

IF not x%url:http=%==x%url% GOTO directFeed
IF not x%url:www.=%==x%url% GOTO directFeed
IF not x%url:.tv=%==x%url% (
 	set url=www.%url%
	GOTO directFeed
)

IF %chat%==true Start http://www.twitch.tv/%url%/chat?popout= 
IF not %quality%==false (
	livestreamer www.twitch.tv/%url% %quality% 
) ELSE ( 
	livestreamer www.twitch.tv/%url% %defaultQuality%
)
GOTO end

:NoURL
	echo No URL argument, please add the URL of a twitch stream.
	GOTO end


:directFeed
	IF %chat%==true Start %url%/chat?popout= 
	IF not %quality%==false (
		livestreamer %url% %quality%
	) ELSE ( 
		livestreamer %url% %defaultQuality%
	)
	GOTO end

:end
