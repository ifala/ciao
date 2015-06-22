---
layout: post
title: "Electronic board"
description: finalproject
headline: 
modified: 2015-02-11
category: finalproject
tags: [finalproject]
imagefeature:
mathjax: 
chart: 
comments: false
featured: true
---

	2015-05-10

LM3480 is to be replaced by LM3940 1-A  ! I wrong the linear voltage regulator in RGB 3.3v Servo 5v board !
After discover that ESP 01 was insufficent to do what I want...I need to redisign my breakout board for integrate the ESP8266 rev A by Olimex, add a Button (maybe direct from Gpio pin of the WiFi board)


	2015-04-21

output device: I created a similar breakout pcb board, to interface ESP with ATTYNY44.
- I had to undestand better the battery features and the mini servo for insert a proper voltage regulator (by now I used a LM3480).


	2015-02-11


![6]({{ site.url }}/images/finalproject/pin/6.jpg)

Schematic plan:

![2]({{ site.url }}/images/finalproject/pin/2.jpg)

![3]({{ site.url }}/images/finalproject/pin/3.jpg)

Batt = Battery

isp = microcontroller

Servo

Blu = wireless connection

![1]({{ site.url }}/images/finalproject/pin/1.jpg)

 maybe I need 6 free pin ??

![4]({{ site.url }}/images/finalproject/pin/4.jpg)

tablet/computer APP

Arrow to turn the cube.

Tap inside the circle for change cube color.

![5]({{ site.url }}/images/finalproject/pin/5.jpg)

how the Cube can connect each other.




<a href="{{ site.url }}/finalproject/schedule/"><span class="tiny button success ">schedule</span></a>
<a href="{{ site.url }}/final_project/"><span class="tiny button success ">project blog</span></a>