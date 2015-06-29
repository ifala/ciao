---
layout: post
title: "Programming"
description: finalproject
headline: 
modified: 2015-04-08
category: finalproject
tags: [finalproject]
imagefeature: 
mathjax: 
chart: 
comments: false
featured: true
---

	2015-06-14

![img app]({{ site.url }}/images/finalproject/programming.jpg)


	2015-05-10

[Interface and application programming]({{ site.url }}/class_assignments/week14/)

<iframe width="560" height="315" src="https://www.youtube.com/embed/QjE1MgSE-bo" frameborder="0" allowfullscreen></iframe>



	2015-05-05

### ESP8266 test

![IMG 20150519 221044]({{ site.url }}/images/finalproject/connection/IMG_20150519_221044.jpg)

I tested some connection between server and client but I have some problem, in order:
- SERVER SIDE: After changing the init.lua now the http server can start normally in the start boot, the server side accept the APP twister command.
- CLIENT SIDE: I tryed to change init.lua code for start a wifi.STATION (wifiConfig.mode = 1), after the boot client don't like connecting at server:

log output:

	NodeMCU 0.9.6 build 20150406  powered by Lua 5.1.4
	set (mode=1)
	MAC: 	18-FE-34-9C-5C-C4
	chip: 	10247364
	heap: 	16224

	Communication with MCU...
	...Got answer! AutoDetect firmware...

	Can't autodetect firmware, because proper answer not received.

	> 
	> 
	> 
	> Connecting to WiFi Access Point ...
	Connecting to WiFi Access Point ...
	Connecting to WiFi Access Point ...
	Connecting to WiFi Access Point ...
	Connecting to WiFi Access Point ...
	Faild to connect to WiFi Access Point.
	print(ip)
	nil

only after send command via ftdi take an ip address:

	> ip = wifi.sta.getip()
	> print(ip)
	192.168.4.2
	

start manually http server:

	> dofile("httpserver.lc")(80)
	nodemcu-httpserver running at http://192.168.4.2:80
	


But If I try to connect direcly via web browser.. the client not respond!


### NodeMCU firmware

- download and install python
- Download and install serialPY
- download [esptool.py](https://github.com/themadinventor/esptool/blob/master/esptool.py)

In this case, select firmware for ESP01 and download nodemcu-firmware-master/pre_build/0.9.4/514k-flash/nodemcu_512k_latest.bin

open terminal and send this command

python esptool.py --port /dev/yournameport(tty.etcetc) write_flash 0x000000 /Users/ifala/Downloads/nodemcu-firmware-master/pre_build/0.9.4/512k-flash/nodemcu_512k_latest.bin 

now I have install the default nodemcu firmware inside the ESP01

to programming the esp01 you must write 2 files 
and upload with ESPlorer (for osx)

	2015-04-08
	
After discuss with my instructor, 
[I discovered this board WIFI ESP8266](https://www.olimex.com/Products/IoT/MOD-WIFI-ESP8266-DEV/open-source-hardware) for the connection wifi of my twister cube:

![normal]({{ site.url }}/images/finalproject/MOD-WIFI-ESP8266-DEV-1.jpg)


	FEATURES
	802.11 b / g / n
	Wi-Fi Direct (P2P), soft-AP
	Built-in TCP / IP protocol stack
	Built-in TR switch, balun, LNA, power amplifier and matching network
	Built-in PLL, voltage regulator and power management components
	802.11b mode + 19.5dBm output power
	Built-in temperature sensor
	Support antenna diversity
	off leakage current is less than 10uA
	Built-in low-power 32-bit CPU: can double as an application processor
	SDIO 2.0, SPI, UART
	STBC, 1×1 MIMO, 2×1 MIMO
	A-MPDU, A-MSDU aggregation and the 0.4 Within wake
	2ms, connect and transfer data packets
	standby power consumption of less than 1.0mW (DTIM3)




	2015-02-22

I need (I think a bluethoot or a wifi connection)
here I have fine a good video (and a tutorial)[http://giltesa.com/2012/12/21/conectar-dos-arduino-mediante-bluetooth] link how to connect via bluethoot 2 arduino...

<iframe width="560" height="315" src="https://www.youtube.com/embed/uEhyHWy6mv4" frameborder="0" allowfullscreen></iframe>


another video tutorial Slave/Master bluethoot

<iframe width="560" height="315" src="https://www.youtube.com/embed/3zORXBq7a5g" frameborder="0" allowfullscreen></iframe>

[Sparkfun XBee USB Breakout Boards](http://www.jeremyblum.com/2011/02/27/arduino-tutorial-9-wireless-communication/)


in this article (he connect arduino [master/slave](http://phillipecantin.blogspot.ca/2012/01/arduino-bluetooth-link.html)



[instructables](http://www.instructables.com/id/BlueTooth-Link-with-auto-detect-connect/step2/Assembling/)


[Communication between Android and Arduino with Bluetooth](http://www.elecfreaks.com/677.html)


<a href="{{ site.url }}/finalproject/schedule/"><span class="tiny button success ">schedule</span></a>
<a href="{{ site.url }}/final_project/"><span class="tiny button success ">project blog</span></a>