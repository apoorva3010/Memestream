#!/bin/bash


# git clone the repo

# cd to the cloned repo directory


# Run the user’s installation steps which will install any necessary dependencies required for the server to run, with sudo permission

chmod +x install.sh

sudo ./install.sh


# 1. Run the user’s server execution steps which will bring up the server

# 2. We’ll be running your server_run.sh as a background process (using &) so that we can run the next set of commands

chmod +x server_run.sh

./server_run.sh &


# 3. Add a sleep timer to sleep.sh depending upon how long you want to sleep so that the server is ready.

chmod +x sleep.sh

./sleep.sh

curl --location --request GET 'http://localhost:8081/memes'

curl --location --request POST 'http://localhost:8081/memes' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'name=barfili dogi' \
--data-urlencode 'caption=cute doggu new doggu' \
--data-urlencode 'url=https://scx2.b-cdn.net/gfx/news/hires/2021/dogs.jpg'

curl --location --request GET 'http://localhost:8081/memes'