# TownTune Bot for Discord
A bot to add some Animal Crossing: New Leaf goodness to your voice channel

TownTune plays the New Leaf OST song for the current hour in your Discord server's region

## Commands
### `@TownTune start` 
Have the bot join your voice channel and start playing music

### `@TownTune stop`
Stop the music and have the bot disconnect from the voice channel

## Setup
TownTune isn't publicly hosted, but you're welcome to set it up yourself for your **personal use only**.

The easiest way to run it is using the Docker image at `turnervink/towntune-bot`.
That includes all of the MP3 files needed for the bot to function.

Once you've got the image run it with:  
`docker run -e BOT_TOKEN=<your discord bot token> -e ENV='production' turnervink/towntune-bot`

Last I tried I wasn't able to get this running outside of the Docker image, but it should be possible
if you can't use Docker. If you figure it out please open an issue here and let me know what you did!
If you want to try that you'll need to provide the MP3 files for each hour yourself as they're not
committed to this repo. Just put 24 `.mp3` files named `0.mp3` through `23.mp3` for the hour of the day
they should play in the `audio` directory. You also need to provide an `hour-chime.mp3` file that will play when the songs change on
the hour, it shouldn't be longer than a few seconds ideally.