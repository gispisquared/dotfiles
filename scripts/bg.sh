#!/bin/sh
curl $(curl "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY" | grep -oP \
'https.*?(png|jpg)') -o bg.jpg
feh --bg-fill bg.jpg
