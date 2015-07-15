DOStwitch
=========
This repo is just a few batch files to smooth out using [livestreamer][1] to pipe twitch streams into [VLC][2]. If you want help setting up livestreamer to view twitch files check out this [guide][3]

To "install" simply drop the two .bat files into livestreamer's installation directory (by default this is **C:\Program Files (x86)\Livestreamer**) now you have two new commands in DOS.

<kbd>twitch</kbd> & <kbd>twitchvod</kbd>

All these batch files do is map your commands into livestreamer, they have simple url filtering to hasten  the process. You supply a stream, and an optional quality setting (default is *best*).
```
twitch zfg1 
```
But if you forget, or prefer pasting the whole url, that's also valid.
```
twitch www.twitch.tv/zfg1 
```

The same goes for twitchvod, where you can grab the whole url or only the streamer/vod subcomponent:
```
twitchvod http://www.twitch.tv/zfg1/v/7619828
```
```
twitchvod zfg1/v/7619828 best
```
Finally, if you supply the additional argument *chat* a chat popout will open in your default browser for maximum fiending.
```
twitch zfg1 best chat
```
or
```
twitch zfg1 chat
```

[1]: http://docs.livestreamer.io/install.html#windows-binaries
[2]: http://www.videolan.org/vlc/download-windows.html
[3]: https://www.reddit.com/r/Kappa/comments/3dbmg4/windows_livestreamervlc_twitch_viewing_pleb/
