FROM python:3.6-alpine

RUN apk add --no-cache --virtual .deps build-base python3-dev libffi-dev openssl-dev gcc
RUN apk add --update ffmpeg

WORKDIR /app

COPY . .

ARG BOT_TOKEN=NDU1MjM0MjgyMTY0NzE1NTM4.Df-DNQ.gBtDd6a4gxbK_7mdeCnNqGtSm8c

RUN pip3 install discord.py[voice]
RUN pip3 install asyncio
RUN pip3 install pytz

RUN apk del .deps

CMD ["python", "-u", "bot.py"]