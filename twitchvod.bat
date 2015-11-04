@echo off

IF %1.==. GOTO NoURL
IF %2.==. GOTO NoQuality

set url=%1
set quality=%2

IF not x%url:www.=%==x%url% GOTO directFeed
IF not x%url:http=%==x%url% GOTO directFeed
IF not x%url:.tv=%==x%url% GOTO directFeed
livestreamer www.twitch.tv/%1 %2 --player-passthrough hls
GOTO end

:NoURL
	echo No URL argument, please add the URL of a twitch stream.
	GOTO end

:NoQuality
	set url=%1
	IF not x%url:www.=%==x%url% GOTO directFeedNoQuality
	IF not x%url:http=%==x%url% GOTO directFeedNoQuality
	IF not x%url:.tv=%==x%url% GOTO directFeedNoQuality
	livestreamer www.twitch.tv/%1 best --player-passthrough hls
	GOTO end


:directFeed
	livestreamer %1 %2 --player-passthrough hls
	GOTO end

:directFeedNoQuality
	livestreamer %1 best --player-passthrough hls
	GOTO end

:end
