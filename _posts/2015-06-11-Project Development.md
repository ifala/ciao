---
layout: post
title: Project Development
description: "week 17"
category: Class_assignments
tags: [evalutation, twistercube ]
imagefeature: project_development.jpg
---

###Table of contents

I used many pages for documenting my project, so you will need to look at those pages first:

[Project description and overall requirements]({{ site.url }}/finalproject/description/) 

[Schedule]({{ site.url }}/finalproject/schedule/)

[Project blog]({{ site.url }}/final_project/)

[Mechanical Design]({{ site.url }}/finalproject/servo/)

[Dissemination, Licensing and Business model]({{ site.url }}/class_assignments/week16/)

[Frequently Asked Questions]({{ site.url }}/) -- mancante

[Project results]({{ site.url }}/) -- mancante

###final project presentation functionality:

Micro servo motion 180 degrees (clockwise - counterclockwise)
Web interface integrated inside ESP8266
RGB led control
Lego compatible molding parts
Lua http server/client

prototype architecture:

network:

electronic:




###Components used and BOM can be found on the applications and implications page.

In this project I focused my attention on the communication between different programming languages, so I used a board with attiny 44 to manage both the Led RGB and the servo motor: it has been very challenging and improving to create my own electronic components and, in this process, I realized that with the many pins of ESP8266 olimex it is possible to directly manage both the servo and the led rgb via the board itself.



###Parts, Case and accessorize

####3dprinting

The mechanical parts of the project (motion and rotation) are 3d printed, as well as the 4 corners connecting the Lego compatible parts and 3 little pieces needed for the setting of the servo motor inside the cube. All these components can  be easily 3d printed in PLA at 90~100 mm/sec. 

The components to be printed are:

- 4x angular
- servo adapter
- ring adapter
- rotating lego face (optionally you can mold it)

####lasercut

All the faces of the cube are in 2mm plexyglass and are laser cutted (80% power and 60% speed). In order to have a good result it is important to carefully calculate the kerf, to obtein the perfect connection between the faces.
The whole project is parametric, with variables for material thickness and cube size.


####Milling and molding

For molding the LEgo faces I used the Roland MDX-40 mill, with machinable wax and Vectrics software following these settings:


- roughing mill: drill 3.18 mm
- fine mill: drill 1/64 mm

2 passages at 45 degrees and 2 passages at 90 degrees

for making the negative I tested various materials, such as: 

	tipi di silicone rubber utilizzati da inserire

The best material is absolutely the one from Prochima, because is very elastic even though it is probably less resistant than others in a high quantity of molding.

####Resin Casting

Twister needs a translucent resin, that allows everyone to see the color of the internal led rgb, so I used: 

	tipo di resina 

Using this resin it is really important to carefully calculate the wight of the two materials to be mixed, beacuse even slightly changing the proportions you won't have the translucent effect we need for this project.

###Programming Twister cube 

Software setup

- install #C code in servoRGB board
- install node mcu firmware 0.9.6 


For networking with yout smartphone - home router:

- connect to wifi-networking with your smartphone - PC - MAC - Tablet ( Access point for share it used internet connection)
- discover your assigned ip, usually under android network is 192.168.43.xxx, in home-router network 192.168.1.xxx

modify all init lua: ( client1, client2, server)

	-- Tell the chip to connect to the access point

	wifi.setmode(wifiConfig.mode)

	cfg =
	  {
	    ip="192.168.43.101",  -- 192.168.XXX.101
	    netmask="255.255.255.0", -- your network netmask ...
	    gateway="192.168.43.1" -- your router gateway 192.168.xxx.1
	  }
	  wifi.sta.setip(cfg)

modify all http/index.htlm file: ( client1, client2, server)

	var ipaddress = ['192.168.43.101', '192.168.43.102'];  <!-- ['192.168.XXX.101', '192.168.XXX.102'] -->
	

- flash Lua code (with html/javascript app)


###Downloads


Electronics:

ESP8266 Breakout Board: brd, sch, etching, milling


3D Printed files:

Angular
motor adapter
intersect rotate
red lego rotate


Laser CUT:

Single face (cube complete)
internal stars


Software :

Breakout board v0.3 - FirmwareProtocol
ESP8266 - firmware - Application


Github Project
All the files will be hosted on Github and improved there