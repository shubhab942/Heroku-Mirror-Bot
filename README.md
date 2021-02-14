# !DEVELOPMENT PERMANENTLY STOPPED UNTIL FURTHER NEWS!
BUSY NOW DUE TO EXAMS . I HAVE UPDATED THE REPO LATEST TO WORK WITH HEROKU FLAWLESSLY . FOLLOWING THE STEPS IS ENOUGH FOR ANYONE TO MAKE OWN BOT.
DON'T KNOW WHEN I WILL BE BACK....SEE YA(◕‿◕)

# What is this repo about?
This Repo is the most generalised verison of a Python mirror bot which can mirror files from anywhere on the Internet including Torrents to Your Google drive Account.

**The Repo has been modified and streamlined specially for Heroku. It won't cause any suspension or ban due to aria in Heroku**

# Features supported:
- Mirroring direct download links to google drive
- Mirroring Mega.nz links to google drive (In development stage)
- Mirror Telegram files to google drive
- Mirror all youtube-dl supported links
- Extract these filetypes and uploads to google drive
> ZIP, RAR, TAR, 7z, ISO, WIM, CAB, GZIP, BZIP2, 
> APM, ARJ, CHM, CPIO, CramFS, DEB, DMG, FAT, 
> HFS, LZH, LZMA, LZMA2, MBR, MSI, MSLZ, NSIS, 
> NTFS, RPM, SquashFS, UDF, VHD, XAR, Z.
- Copy files from someone's drive to your drive (using Autorclone)
- Service account support in cloning and uploading
- Download progress
- Upload progress
- Download/upload speeds and ETAs
- Docker support
- Uploading To Team Drives.
- Index Link support
- Shortener support

## Bot commands to be set in botfather

```
mirror - Start Mirroring
tarmirror - Upload tar (zipped) file
unzipmirror - Extract files
clone - copy folder to drive
watch - mirror YT-DL support link
tarwatch - mirror youtube playlist link as tar
cancel - Cancel a task
cancelall - Cancel all tasks
del - Delete file from Drive
list - [query] searches files in G-Drive - Results in Telegra.ph
status - Get Mirror Status message
stats - Bot Usage Stats
help - Get Detailed Help
log - Bot Log [owner only]
ping - Get Ping of Bot
restart - Restarts Bot
```

## Deploying With Heroku

- First , you need to fork this repo to your Github account (Create One If you don't have)
- On your PC , Make sure you have installed [Git](https://git-scm.com/downloads). Open Command Prompt/Terminal. Clone this repo by running:
```
git clone https://github.com/wrecker3000/Heroku-Mirror-Bot
cd Heroku-Mirror-Bot
```
- Follow  Procedure to get credentials from Google OAuth API discussed Below or if you already have it, then continue steps from here
- Replace Your credentials.json to root directory of Heroku Mirror Bot which you cloned in your PC.
- Now delete token.pickle in Heroku-Mirror-Bot folder and on same Command Prompt/Terminal Window as Above, run:
```
pip install google-api-python-client google-auth-httplib2 google-auth-oauthlib
python3 generate_drive_token.py
```
```
Now, if you did everything right , A link will be shown there .Copy it and visit the link to add your google drive account.
If unverified message comes click on Continue anyway and link your Google Drive Account.
```
- Now goto your github Account's Repo ,you just forked and add files via upload credentials.json and token.pickle that you created right now.

**DEPLOY**

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/shubhab942/Heroku-Mirror-Bot)

- Now, need to create heroku app. For that, Either edit above Deploy to heroku button in readme.md if you can or goto this link simply:
```
https://heroku.com/deploy?template=https://github.com/USERNAME/Heroku-Mirror-Bot
Replace USERNAME with your Github Account Username and Visit the Link in your Browser.
```
- Fill up all the Fields in Config Vars on Heroku App Page.
- Deploy it and then ALL DONE....!! Use through Your Telegram Bot.


## Setting Up Config Vars

Fill up these fields. Meaning of each fields are discussed below:
- **BOT_TOKEN** : The telegram bot token that you get from @BotFather
- **GDRIVE_FOLDER_ID** : This is the folder ID of the Google Drive Folder to which you want to upload all the mirrors.
- **DOWNLOAD_STATUS_UPDATE_INTERVAL** : A short interval of time in seconds after which the Mirror progress message is updated. (I recommend to keep it 5 seconds at least)  
- **OWNER_ID** : The Telegram user ID (not username) of the owner of the bot
- **AUTO_DELETE_MESSAGE_DURATION** : Interval of time (in seconds), after which the bot deletes it's message (and command message) which is expected to be viewed instantly. Note: Set to -1 to never automatically delete messages
- **IS_TEAM_DRIVE** : (Optional field) Set to "True" if GDRIVE_FOLDER_ID is from a Team Drive else False or Leave it empty.
- **INDEX_URL** : (Optional field) Refer to https://github.com/maple3142/GDIndex/ The URL should not have any trailing '/'
- **API_KEY** : This is to authenticate to your telegram account for downloading Telegram files. You can get this from https://my.telegram.org DO NOT put this in quotes.
- **API_HASH** : This is to authenticate to your telegram account for downloading Telegram files. You can get this from https://my.telegram.org
- **USER_SESSION_STRING** : Generate String session by [clicking here](https://generatestringsession.magneto261290.repl.run/) **OR** you can generate by running :
```
python3 generate_string_session.py
```
- **STOP_DUPLICATE_MIRROR**: (Optional field) (Leave empty if unsure) if this field is set to `True` , bot will check file in drive, if it is present in drive, downloading will ne stopped. (Note - File will be checked using filename, not using filehash, so this feature is not perfect yet)
- **SHORTENER**: (Optional field) if you want to use shortener in Gdrive and index link, fill shotener url here. Examples :-

> exe.io
> gplinks.in
> shrinkme.io
> urlshortx.com
> shortzon.com

Note :- Above are the supported url shorteners. Except these only some url shorteners are supported. If you want to use any other url shortener then first ask me that shortener is supported or not.
- **SHORTENER_API**: Fill your shortener api key if you are using shortener.

Note: You can limit maximum concurrent downloads by changing the value of MAX_CONCURRENT_DOWNLOADS in aria.sh. By default, it's set to 4
 
# Getting Google OAuth API credential.json file (Needed Only Once)

- Visit the [Google Cloud Console](https://console.developers.google.com/apis/credentials)
- Go to the OAuth Consent tab, fill it, and save.
- Go to the Credentials tab and click Create Credentials -> OAuth Client ID
- Choose Desktop and Create.
- Use the download button to download your credentials.
- Move that file to the root of mirror-bot, and rename it to credentials.json
- Visit [Google API page](https://console.developers.google.com/apis/library)
- Search for Drive and enable it if it is disabled
 
## Credits :-
- [Shivam Jha aka lzzy12](https://github.com/lzzy12) [repo](https://github.com/lzzy12)
- [Sreeraj V R](https://github.com/SVR666) [repo](https://github.com/SVR666/LoaderX-Bot)
- [Dev Singh Rajput](https://github.com/magneto261290) [repo](https://github.com/magneto261290/magneto-python-aria)
- [archie](https://github.com/archie9211)

# Contact me
For Any Suggestions or help, feel free to contact on @remand57 telegram.



