# 1337x
Bash script to download movies/torrent using rofi.<br/>
Uses 1337x.to to download the torrents.<br/>
The file "allfilmtitle" is not required but it contains a list of popular english movies.<br/>

---------------
# Requirements
tranmission-cli<br/>
rofi or dmenu<br/>

# Usage
After downloading transmission-cli, change the download direcotry using the following command.

```sh
transmission-daemon --download-dir "your-download-directory-path"
```

After changing the download directory, to start the Transmission session, you can run the daemon:
```
transmission-daemon
```
