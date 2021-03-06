Stream stunning footage from NASA's High Definition Earth Viewing (HDEV) Cameras to your Raspberry Pi.

Credit to those Blog's for some ideas.
<br>https://bradsblahblog.com/2016/07/28/space-frame
<br>http://blog.miguelgrinberg.com/post/watch-live-video-of-earth-on-your-raspberry-pi

For my space frame I used a *Raspberry Pi 2 B* with latest *Raspbian Jessie* installed and the *Official 7" Display*.<br>
See pictrue http://imgur.com/IzFGym5

# 1. Preparation

First things first. We have to install all dependencies to make this work proper.

Obligatory updates...
> sudo apt-get update <br>
> sudo apt-get upgrade

To download the RasPi-iss-streamer you need GitHub.
> sudo apt-get install git

Make sure you are in the users home directory by run
> cd

and run this command to download the necessary scripts.
> git clone https://github.com/johnwayne1930/RasPi-IssStreamer.git stream

Make them executable.
> sudo chmod +x iss.sh && sudo chmod +x iss.py && sudo chmod +x iss-stream.sh

Livestreamer for the livestream.
> sudo apt-get install python-dev <br>
> sudo apt-get install python-pip <br>
> sudo pip install livestreamer

Some stuff to get good stream quality.
> sudo apt-get install librtmp-dev <br>
> sudo apt-get install libffi-dev <br>
> sudo pip install cffi <br>
> sudo pip install python-librtmp

Omxplayer, because livestreamer is not a player itself.
> sudo apt-get install omxplayer

Also an converter from image to video which we need for the position overlay.
> sudo apt-get install libav-tools

Feh, the image viewer.
> sudo apt-get install feh

Screen for emulating terminal sessions.
> sudo apt-get install screen 

Python.
> sudo apt-get install python3 <br>
> sudo pip install urllib urllib2

That should be all for now.

# 2. Usage

The `<iss.sh>` starts the stream on the Raspberry Pi display.
Therefore open the Terminal or SSH into your Pi and use one of following commands:

> ~/stream/iss.sh ch0 <br>

Swaps automaticly between the HDEV stream during daytime and the other ISS Live Stream at nighttime.

> ~/stream/iss.sh ch1 <br>

Starts High Definition Earth Viewing (HDEV) experiment ustream which swaps between three different cameras from time to time.<br>

About:<br>
*Black Image means the International Space Station (ISS) is on the night side of the Earth.
There is no audio by design.*

> ~/stream/iss.sh ch2 <br>

Starts the other Live ISS ustream.<br>

About:<br>
*Live video from the International Space Station includes internal views when the crew is on-duty and Earth views at other times.
The video is accompanied by audio of conversations between the crew and Mission Control.
This video is only available when the space station is in contact with the ground. During "loss of signal" periods, viewers will see a blue screen.*

> ~/stream/iss.sh ch3 <br>

Starts the NASA Public-Education ustream.<br>

About:<br>
*NASA TV airs a variety of regularly scheduled, pre-recorded educational and public relations programming 24 hours a day on its various channels.
The network also provides an array of live programming, such as 24-hour coverage of ~~Space Shuttle~~ missions, ISS events (spacewalks, media interviews, educational broadcasts), press conferences and rocket launches.*

> ~/stream/iss.sh stop <br>

Cancels all runnig actions from previous commands.

Furthermore, each of the three channel commands above starts a ISS position picture in the top left corner and a big fullscreen picture schematic of ISS's actual orbit in the background, so you have something to watch if the stream goes down for some reason.

# 3. Notation

Due to large data traffic it is not recommended to run the stream with a mobile internet connection.

Control the stream on your Pi from your smartphone.<br>
https://play.google.com/store/apps/details?id=uk.co.knowles_online.raspberrysshlite<br>
or with something similar for iPhone.
