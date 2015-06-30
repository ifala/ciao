---
layout: post
title: Project Development
description: "week 18"
category: Class_assignments
tags: [evalutation, twistercube ]
imagefeature: project_development.jpg
---

###Table of contents

I used many pages for documenting my project, so you will need to look at those pages first:


[Project description and overall requirements]({{ site.url }}/finalproject/description/)

[Schedule]({{ site.url }}/finalproject/schedule/)

[Project blog]({{ site.url }}/final_project/)

[Mechanical Design]({{ site.url }}/finalproject/rgb/)

[Dissemination, Licensing and Business model]({{ site.url }}/class_assignments/week16/)


###Tinal project presentation functionality:

Micro servo motion 180 degrees (clockwise - counterclockwise)
Web interface integrated inside ESP8266
RGB led control
Lego compatible molding parts
Lua http server/client

###Prototype architecture:

![Front]({{ site.url }}/images/week/17/front.jpg)

![Rear]({{ site.url }}/images/week/17/rear.jpg)

###Network:

![Networking Map]({{ site.url }}/images/networking_map.jpg)

###Electronic:

![Electronic]({{ site.url }}/images/week/17/electronic.jpg)

###Programming:

![Programming]({{ site.url }}/images/week/17/programming.jpg)


###Components used and BOM 

[list can be found on the applications and implications page.]({{ site.url }}/class_assignments/week15/)

In this project I focused my attention on the communication between different programming languages, so I used a board with attiny 44 to manage both the Led RGB and the servo motor: it has been very challenging and improving to create my own electronic components and, in this process, I realized that with the many pins of ESP8266 olimex it is possible to directly manage both the servo and the led rgb via the board itself.



###Parts, Case and accessorize

![Cube]({{ site.url }}/images/week/17/cube.jpg)

####3dprinting

The mechanical parts of the project (motion and rotation) are 3d printed, as well as the 4 corners connecting the Lego compatible parts and 3 little pieces needed for the setting of the servo motor inside the cube. All these components can  be easily 3d printed in PLA at 90~100 mm/sec. 

The components to be printed are:

- 4x angular
- servo adapter
- ring adapter
- rotating lego face (optionally you can mold it)

####Lasercut

All the faces of the cube are in 2mm plexyglass and are laser cutted (80% power and 60% speed). In order to have a good result it is important to carefully calculate the kerf, to obtein the perfect connection between the faces.
The whole project is parametric, with variables for material thickness and cube size.


####Milling and molding

For molding the Lego faces I used the Roland MDX-40 mill, with machinable wax and Vectrics software following these settings:


- roughing mill: drill 3.18 mm
- fine mill: drill 1/64 mm

2 passages at 45 degrees and 2 passages at 90 degrees

for making the negative I tested various materials, such as: 

- Mold MAX 60 - silicone rubber

![mini]({{ site.url }}/images/week/17/smoothcast.jpg)

- Prochima GLS-50 

![mini]({{ site.url }}/images/week/17/prochima.jpg)

The best material is absolutely the one from Prochima, because is very elastic even though it is probably less resistant than others in a high quantity of molding.

####Resin Casting

Twister needs a translucent resin, that allows everyone to see the color of the internal led rgb, so I used: 

+ Smooth-Cast® 325

![Casting]({{ site.url }}/images/week/17/casting.jpg)

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






###Demo video - Final Presentation

<div class="flex-video widescreen vimeo">
  <iframe src="http://player.vimeo.com/video/130966855" width="400" height="225" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
</div>





##Downloads



####Electronics:
*etching 1/64 - milling 1/32 - cut 1/32*

- ESP8266 Breakout Board: [brd]({{ site.url }}/images/week/17/download_twister/electronic/breakoutBoard_03.brd), [sch]({{ site.url }}/images/week/17/download_twister/electronic/breakoutBoard_03.sch)
+ Top: [top etching]({{ site.url }}/images/week/17/download_twister/electronic/fabmodules_png/top_eaching.png), [top holes]({{ site.url }}/images/week/17/download_twister/electronic/fabmodules_png/top_hole.png)
+ Bottom: [bottom test]({{ site.url }}/images/week/17/download_twister/electronic/fabmodules_png/bottom_hole_test.png), [bottom etching]({{ site.url }}/images/week/17/download_twister/electronic/fabmodules_png/bottom_eching.png), [bottom cut]({{ site.url }}/images/week/17/download_twister/electronic/fabmodules_png/bottom_cut.png)


####3D Printed files:
*pla - 80 mm/sec - 40 mm/sec outer shell*


- Angular [(support included STL)]({{ site.url }}/images/week/17/download_twister/3dprinted/angle_support.stl) [(no support)]({{ site.url }}/images/week/17/download_twister/3dprinted/angle.stl)
- Motor adapter [STL]({{ site.url }}/images/week/17/download_twister/3dprinted/motor_adapt.STL)
- Intersect rotate [STL]({{ site.url }}/images/week/17/download_twister/3dprinted/Intersect_rotate.STL)
- Red lego rotate [STL]({{ site.url }}/images/week/17/download_twister/3dprinted/Red_lego_rotate.STL)


####Molding Lego file:
*roughing 3.18 - fine 1/32*


- Lego Positive : [STL]({{ site.url }}/images/week/17/download_twister/Molding/Lego_positive.STL) [roughing]() , [fine]()
- Lego Negative : [STL]({{ site.url }}/images/week/17/download_twister/Molding/Lego_negative.STL) [roughing]() , [fine]()


####Laser CUT
*power 100% - speed 65%*


- Single face [(no kerf DXF)]({{ site.url }}/images/week/17/download_twister/Lasercut/single_face.DXF)
- Internal stars [(no kerf DXF)]({{ site.url }}/images/week/17/download_twister/Lasercut/motor_laser_adapter.DXF)


####Software :

- Breakout board v0.3 - [FirmwareProtocol]({{ site.url }}/images/week/17/download_twister/software/breakoutB.zip)
- ESP8266 - [Firmware]({{ site.url }}/images/week/17/download_twister/software/nodemcu_integer_0.9.6-dev_20150406.bin) - [Application]({{ site.url }}/images/week/17/download_twister/software/application.zip)


Github Project
All the files will be hosted on [Github and improved there](https://github.com/ifala/twister)