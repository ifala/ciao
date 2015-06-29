---
layout: post
title: "Electronic board"
description: finalproject
headline: 
modified: 2015-05-17
category: finalproject
tags: [finalproject]
imagefeature:
mathjax: 
chart: 
comments: false
featured: true
---

	2015-05-17

#break board v0.3



![mini]({{ site.url }}/images/finalproject/electronic/IMG_20150614_105702.jpg)

![mini]({{ site.url }}/images/finalproject/electronic/front_each.png)


	2015-05-10

#break board v0.2

![mini]({{ site.url }}/images/finalproject/electronic/IMG_20150606_122901.jpg)
![mini]({{ site.url }}/images/finalproject/electronic/IMG_20150606_122913.jpg)

![mini]({{ site.url }}/images/finalproject/electronic/IMG_20150606_132249.jpg)
![mini]({{ site.url }}/images/finalproject/electronic/IMG_20150606_150132.jpg)

	2015-04-29

#breakout board v0.1

Dopo molte ricerche su internet, ho deciso di provare a fare la nuova scheda senza voltage regulator, in quanto leggendo bene il datasheet del ESP8266 ho trovato che riesce a lavorare con un voltaggio massimo di 3.6 v e con assorbimenti variabili min 0.5 uA e max 215 mA.

la prima scheda che ho creato partendo dallo schematich scaricato dal sito dell'[DEV esp8266 revA](https://www.olimex.com/Products/IoT/MOD-WIFI-ESP8266-DEV/open-source-hardware)


![mini]({{ site.url }}/images/finalproject/electronic/IMG_20150527_190502.jpg)
![mini]({{ site.url }}/images/finalproject/electronic/IMG_20150527_190537.jpg)
![mini]({{ site.url }}/images/finalproject/electronic/IMG_20150527_190543.jpg)
![mini]({{ site.url }}/images/finalproject/electronic/IMG_20150527_190558.jpg)



	2015-04-25

LM3480 is to be replaced by LM3940 1-A  ! I wrong the linear voltage regulator in RGB 3.3v Servo 5v board !
After discover that ESP 01 was insufficent to do what I want...I need to redisign my breakout board for integrate the ESP8266 rev A by Olimex, add a Button (maybe direct from Gpio pin of the WiFi board)


	2015-04-21

[output device]({{ site.url }}/class_assignments/week11/): I created a similar breakout pcb board, to interface ESP with ATTYNY44.
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