//Varibili
// b+e+k = inizio primo taglio ondulatura/inizio piega

a=7;       //thikness material
b=10	;	// halftop
g=2;		//vinyl lost angle

c=90	;	//circle top
d=60	;	//circle down
X=250;		//interasse appoggi larghezza
Y=135;		//interasse appoggi profondita

F=5.65;			//interasse ondulature

P=20	;	//extra margine laterale
L=40;	//extra margine sup e inf

K=0.2; //kerf

// Fix

e=4*a;		//incastri super&inf per appoggio

//===================================================
// uncomment for export

//+++++++++++Test laser cut cardboard
projection(cut = false) testlaser();


//+++++++++++Laser Cut cardboard (press F6 and export DXF)
//translate([X+P+X/5+K+K+10,0,0]) projection(cut = false) rotate([0,0,90]) layerdown();
//projection(cut = false) overup();

//+++++++++++Vinyl Cut
//projection(cut = false) vinile();


module vinile()
{
vinile1();

translate([X/9,b/2+a*1.7/2+1,0]) vinile2();
translate([-(X/9),b/2+a*1.7/2+1,0]) vinile2();
translate([X/4+10,b/2+a*1.7/2+1,0]) vinile2();
translate([-(X/4)-10,b/2+a*1.7/2+1,0]) vinile2();

translate([-(X/9)-20,20+(2*b+e+K+e+K),0]) vinile4();
translate([-(X/3)-20,20+(2*b+e+K+e+K),0]) vinile4();
translate([(X/9)+20,20+(2*b+e+K+e+K),0]) vinile4();
translate([(X/3)+20,20+(2*b+e+K+e+K),0]) vinile4();


translate([-(X/9)-20,-b*2,0]) rotate([180,0,0]) vinile4();
translate([-(X/3)-20,-b*2,0]) rotate([180,0,0]) vinile4();
translate([(X/9)+20,-b*2,0]) rotate([180,0,0]) vinile4();
translate([(X/3)+20,-b*2,0]) rotate([180,0,0]) vinile4();
}

//+++++++++++++++++++++
// togli i commenti per visualizzare
//translate([0,0,-a/2]) layerdown();
//translate([0,0,a/2]) overup();



//===================================================



// Layer inferiore
module layerdown()
{
difference()
{	
	{
	cube([X+P+X/5+K,Y+L+K,a], center=true); //appoggio portatile
	}
	//fori incastri

	for(i=[X/2,-X/2],v=[Y/2,-Y/2])
	{
	translate([i,v,0]) cube([X/5-K,a-K,a],center=true);
	}
}
}


//geometria tagli ruote "cartone ondulato"
module tagli()
{
cube([X+P+X/5+K,1+K,a], center=true);
}

for ( tagli = [1 : 10 ] ) {
  translate ( [ 0, F*(tagli-1), 0 ] ) {
//tagli();
}
}


module overup()
{

//layer superiore con piegature e incastri
module layerup() 
{
layerdown();
	difference()
	{
	color("LightCyan") translate([0,Y/2+L/2+c/2,0]) cube([X+P+X/5+K,c,a], center=true);		//cartone ondulato taglio laser

for ( tagli = [1 : c/F+1 ] ) 
			{
  			translate([0,Y/2+L/2,0]) translate ( [ 0, F*(tagli-1), 0 ] ) {
				 tagli();
			}
			}

	}
	difference()
	{
	color("LightCyan") translate([0,-(Y/2+L/2+d/2),0]) cube([X+P+X/5+K,d,a], center=true);    //cartone ondulato taglio laser

	for ( tagli = [1 : d/F+1 ] ) 
			{
  			translate([0,-(Y/2+L/2+d),0]) translate ( [ 0, F*(tagli-1), 0 ] )  {
				tagli();
			}
			}


	}
module spallettaforata()
{
difference()
	{
	spalletta();
	for(i=[X/2,-X/2],v=[Y/2+L/2+c+b+e/2,-(Y/2+L/2+d+b+e/2)])
		{
		translate([i,v,0]) cube([X/11-K,a-K,a],center=true);
		}
	}

}
spallettaforata();

}
difference()
{
layerup();
//chiave incastro spessori taglio laser
for(i=[X/2,-X/2],v=[Y/2-(a*1.5),-Y/2+(a*1.5)])
		{
		translate([i,v,0]) cube([X/7+K,(a*1.7)+K,a],center=true);
		}
for(i=[X/2,-X/2],v=[Y/2,-Y/2])
		{
		translate([i,v,0]) cube([X/11+K,(a*3)+K,a],center=true); //da rivedere centro proporzione anziche estremo
		}
for(i=[X/2,-X/2],v=[Y/2-(a*3.3)+1,-Y/2+(a*3.3)-1])
		{
		translate([i,v,0]) cube([X/10+K,(a*1.7)+K,a],center=true);
		}
for(i=[X/2,-X/2],v=[Y/2-(a*3.3),-Y/2+(a*3.3)])
		{
		translate([i,v,0]) cube([X/7+K,(a*1.7)+K,a],center=true);
		}
}
for(i=[X/2+X/11/2+K+0.5,-(X/2+X/11/2+K+0.5)],v=[Y/2,-Y/2])
		{
		translate([i,v,0]) cube([1+K,(a*2)+K,a],center=true);
		}
for(i=[X/2-X/11/2-K-0.5,-(X/2-X/11/2-K-0.5)],v=[Y/2,-Y/2])
		{
		translate([i,v,0]) cube([1+K,(a*2)+K,a],center=true);
		}

module spalletta()		//spalletta in vinile
{
	translate([0,Y/2+L/2+c+b/2,0]) cube([X+P+X/5+K,b,a], center=true);
	translate([0,-(Y/2+L/2+d+b/2),0]) cube([X+P+X/5+K,b,a], center=true);
	for(i=[X/2,-X/2],v=[Y/2+L/2+c+b+e/2,-(Y/2+L/2+d+b+e/2)])
		{
		translate([i,v,0]) cube([X/5+K,e+K,a],center=true);
		}
}


}






//solo per taglio vinile

module spallettavinile()
{
cube([X+P+X/5,b,a], center=true);
translate([0,b+2*e+(a+(g*2)),0]) cube([X+P+X/5+K,b,a], center=true);
for(i=[X/2,-X/2])
		{
		translate([i,b/2+e/2,0]) cube([X/5,e,a],center=true);
		translate([i,b/2+e/2+e+a+(g*2),0]) cube([X/5,e,a],center=true);
		translate([i,b/2+(a+(g*2))/2+e,0]) cube([X/5,a+(g*2),a],center=true);
		}
}

module vinile1()
{
difference()
{
spallettavinile();
{
for(i=[X/2,-X/2],v=[b/2+e/2,b/2+e/2+e+a+(g*2)])
		{
		translate([i,v,0]) cube([X/11-K,a-K,a],center=true);
		}
}
}
}
//vinile1();



module vinile2()
{
cube([X/7,(a*1.7),a],center=true);
translate([0,(a*1.5),0]) cube([X/11,(a*3),a],center=true);
translate([0,(a*3)+(a+(g*2))/2,0]) cube([X/11,a+(g*2),a],center=true);
translate([0,(a*4.5)+a+(g*2),0]) cube([X/11,(a*3),a],center=true);
translate([0,(a*4.5)+a+(g*2)+(a*1.5),0]) cube([X/7,(a*1.7),a],center=true);
}

module vinile3()
{
cube([X/7+K,(a*1.7)+K,a],center=true);
translate([0,(a*1.5)+K,0]) cube([X/11+K,(a*3),a],center=true);
translate([0,(a*2)+K+a+(g*2),0]) cube([X/11+K,a+(g*2),a],center=true);
}

module vinile4()
{
cube([X/5.6+K,(a*1.8),a],center=true);
translate([0,(a*2/3)+K,0]) cube([X/11+K,(a*3),a],center=true);
}

//vinile2();









// Test taglio laser
module testlaser()
{
difference()
	{
	color("LightCyan") translate([0,Y/2+L/2+c/2,0]) cube([X+P+X/5+K,c,a], center=true);

for ( tagli = [1 : c/F+1 ] ) 
			{
  			translate([0,Y/2+L/2,0]) translate ( [ 0, F*(tagli-1), 0 ] ) {
				 tagli();
			}
			}
}
}
	







