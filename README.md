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

### Run with Docker
The easiest way to run it is using the Docker image at `turnervink/towntune-bot`.
That includes all of the MP3 files needed for the bot to function.

Once you've got the image run it with:  
`docker run -e BOT_TOKEN=<your discord bot token> -e ENV=<environment> turnervink/towntune-bot`

`BOT_TOKEN` should be your Discord bot token
`ENV` should be `development` if you want to see logs for working on the bot, and `production` otherwise

### Run without Docker
I haven't been able to figure this out, there's some issue with loading the `libopus.so` file
when I try to run the bot outside of Docker. If you want to give it a go you'll need to set up a few things:

- Install the Python dependencies
    - `discord.py[voice]`
    - `pytz`
- Provide the MP3 files for the bot to use (they're not committed to this repo)
    - Put 24 `.mp3` files in `/audio` that are named `0.mp3` through `23.mp3` for the hour they should each be played
    - Put a `hour-chime.mp3` file in `/audio` that will be played between hours when the song changes
- Set the environment variables
    - `BOT_TOKEN` should be your Discord bot token
    - `ENV` should be `development` if you want to see logs for working on the bot, and `production` otherwise
