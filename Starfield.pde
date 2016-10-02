// Bryan Zin -- Starfield Solar System
// AP Computer Science - Block 3 - Mr.Simon

Particle [] asteroids; 
OddballParticle [] earth;
JumboParticle [] sun;
OddballParticle2 [] jupiter;
OddballParticle3 [] mars;
OddballParticle4 [] mercury;
OddballParticle5 [] venus;
OddballParticle6 [] saturn;
OddballParticle7 [] uranus;
OddballParticle8 [] neptune;
OddballParticle9 [] pluto;

public void setup()
{
	size(1000,1000);
	asteroids = new Particle[200];
	earth = new OddballParticle[1];
	sun = new JumboParticle[1];
	jupiter = new OddballParticle2[1];
	mars = new OddballParticle3[1];
	mercury = new OddballParticle4[1];
	venus = new OddballParticle5[1];
	saturn = new OddballParticle6[1];
	uranus = new OddballParticle7[1];
	neptune = new OddballParticle8[1];
	pluto = new OddballParticle9[1];
	 for (int nI = 0; nI < asteroids.length; nI++) 
	 {
	 	asteroids[nI] = new NormalParticle();
	 }
	 earth[0] = new OddballParticle();
	 sun[0] = new JumboParticle();
	 jupiter[0] = new OddballParticle2();
	 mars[0] = new OddballParticle3();
	 mercury[0] = new OddballParticle4();
	 venus[0] = new OddballParticle5();
	 saturn[0] = new OddballParticle6();
	 uranus[0] = new OddballParticle7();
	 neptune[0] = new OddballParticle8();
	 pluto[0] = new OddballParticle9();
}
public void draw()
{
	background(0);
	for (int i = 0; i < asteroids.length; i++) 
	{
		asteroids[i].show();
		asteroids[i].move();
	}
	for (int j = 0; j < earth.length; j++)
	{
		earth[j].show();
		earth[j].move();
	}
	for (int k = 0; k < sun.length; k++) 
	{
		sun[k].show();
		sun[k].expand();
		sun[k].move();
	}
	for (int l = 0; l < jupiter.length; l++) 
	{
		jupiter[l].show();
		jupiter[l].move();
	}
	for (int m = 0; m < mars.length; m++) 
	{
		mars[m].show();
		mars[m].move();
	}
	for (int n = 0; n < mercury.length; n++) 
	{
		mercury[n].show();
		mercury[n].move();
	}
	for (int o = 0; o < venus.length; o++) 
	{
		venus[o].show();
		venus[o].move();
	}
	for (int p = 0; p < saturn.length; p++) 
	{
		saturn[p].show();
		saturn[p].move();
	}
	for (int q = 0; q < uranus.length; q++) 
	{
		uranus[q].show();
		uranus[q].move();
	}
	for (int r = 0; r < neptune.length; r++) 
	{
		neptune[r].show();
		neptune[r].move();
	}
	for (int s = 0; s < pluto.length; s++) 
	{
		pluto[s].show();
		pluto[s].move();
	}
}
class NormalParticle implements Particle 
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	double radius;
	NormalParticle ()
	{
		posX = 500;
		posY = 500;
		speed = 4;
		angle = Math.PI * 2 * Math.random();
		radius = Math.sqrt( (500*500) - ( (posX*posX) + (posY*posY) ) );
	}
	public void move()
	{
		posX = Math.cos(angle * speed) + posX;
		posY = Math.sin(angle * speed) + posY;
		if (radius == 10)
		{
			posX = 40;
			posY = 40;
		}
	}
	public void show()
	{
		fill(96,96,96);
		ellipse((float)posX, (float)posY, 10, 10);
	}
}
interface Particle
{
	public void show(); 
	public void move();
}
class OddballParticle //Earth
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	OddballParticle ()
	{
		posX = 500;
		posY = 500;
		speed = 6;
		angle = Math.PI/4;
	}
	void move()
	{
		
		posX = Math.cos(angle * speed) + posX;
		posY = Math.sin(angle * speed) + posY;
	}
	void show()
	{
		fill(0,0,255);
		ellipse((float)posX, (float)posY, 50, 50);
	}
}
class OddballParticle2 //jupiter
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	double radius = Math.sqrt( ((posX-500)*(posX-500)) + ((posY-500)*(posY-500)) );
	OddballParticle2 ()
	{
		posX = 500;
		posY = 500;
		speed = 18;
		angle = 3*Math.PI/4;
	}
	void move()
	{
		posX = Math.cos(angle * speed) + posX +0.5;
		posY = Math.sin(angle * speed) + posY +0.5;
		if (radius >= 50)
		{
			
		}
	}
	void show()
	{
		fill(255,0,0);
		ellipse((float)posX, (float)posY, 60, 60);
	}
}

class OddballParticle3 //mars
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	double radius = Math.sqrt( ((posX-500)*(posX-500)) + ((posY-500)*(posY-500)) );
	OddballParticle3 ()
	{
		posX = 500;
		posY = 500;
		speed = 21;
		angle = 12*Math.PI/4;
	}
	void move()
	{
		posX = Math.cos(angle * speed) + posX +0.5;
		posY = Math.sin(angle * speed) + posY +0.5;
		if (posX <= 299 && posY >= 599)
		{
			posX = 299;
			posY = 699; 
		}
	}
	void show()
	{
		fill(153,76,0);
		ellipse((float)posX, (float)posY, 40, 40);
	}
}

class OddballParticle4 //mercury
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	double radius = Math.sqrt( ((posX-500)*(posX-500)) + ((posY-500)*(posY-500)) );
	OddballParticle4 ()
	{
		posX = 500;
		posY = 500;
		speed = 16;
		angle = 3*Math.PI/4;
	}
	void move()
	{
		posX = Math.cos(angle * speed) + posX +0.5;
		posY = Math.sin(angle * speed) + posY +0.5;
		if (radius >= 50)
		{
			
		}
	}
	void show()
	{
		fill(102,0,0);
		ellipse((float)posX, (float)posY, 15, 15);
	}
}

class OddballParticle5 // venus
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	double radius = Math.sqrt( ((posX-500)*(posX-500)) + ((posY-500)*(posY-500)) );
	OddballParticle5 ()
	{
		posX = 500;
		posY = 500;
		speed = 1;
		angle = 4*Math.PI/4;
	}
	void move()
	{
		posX = Math.cos(angle * speed) + posX +0.5;
		posY = Math.sin(angle * speed) + posY +01;
		if (radius >= 50)
		{
			
		}
	}
	void show()
	{
		fill(255,128,0);
		ellipse((float)posX, (float)posY, 25, 25);
	}
}

class OddballParticle6 // saturn
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	double radius = Math.sqrt( ((posX-500)*(posX-500)) + ((posY-500)*(posY-500)) );
	OddballParticle6 ()
	{
		posX = 500;
		posY = 500;
		speed = 21;
		angle = 3*Math.PI/4;
	}
	void move()
	{
		posX = Math.cos(angle * speed) + posX +0.5;
		posY = Math.sin(angle * speed) + posY +0.5;
		if (radius >= 50)
		{
			
		}
	}
	void show()
	{
		fill(255,178,102);
		ellipse((float)posX, (float)posY, 69, 69);
	}
}

class OddballParticle7 // uranus
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	double radius = Math.sqrt( ((posX-500)*(posX-500)) + ((posY-500)*(posY-500)) );
	OddballParticle7 ()
	{
		posX = 500;
		posY = 500;
		speed = 15;
		angle = 3*Math.PI/4;
	}
	void move()
	{
		posX = Math.cos(angle * speed) + posX +0.5;
		posY = Math.sin(angle * speed) + posY +0.5;
		if (radius >= 50)
		{
			
		}
	}
	void show()
	{
		fill(0,204,204);
		ellipse((float)posX, (float)posY, 64, 64);
	}
}

class OddballParticle8 // neptune
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	double radius = Math.sqrt( ((posX-500)*(posX-500)) + ((posY-500)*(posY-500)) );
	OddballParticle8 ()
	{
		posX = 500;
		posY = 500;
		speed = 17;
		angle = 3*Math.PI/4;
	}
	void move()
	{
		posX = Math.cos(angle * speed) + posX +0.5;
		posY = Math.sin(angle * speed) + posY +0.5;
		if (radius >= 50)
		{
			
		}
	}
	void show()
	{
		fill(0,128,255);
		ellipse((float)posX, (float)posY, 66, 66);
	}
}

class OddballParticle9 // pluto
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	double radius = Math.sqrt( ((posX-500)*(posX-500)) + ((posY-500)*(posY-500)) );
	OddballParticle9 ()
	{
		posX = 500;
		posY = 500;
		speed = 14;
		angle = 3*Math.PI/4;
	}
	void move()
	{
		posX = Math.cos(angle * speed) + posX +0.5;
		posY = Math.sin(angle * speed) + posY +0.5;
		if (radius >= 50)
		{
			
		}
	}
	void show()
	{
		fill(102,102,255);
		ellipse((float)posX, (float)posY, 19, 19);
	}
}

class JumboParticle  // Sun
{
	int mySize;
	double posX; // position X
	double posY; // position Y
	int c; // color
	JumboParticle()
	{
		mySize = 0;
		posX = 500;
		posY = 500;
	}
	void expand()
	{
		mySize++;
	}
	void show()
	{
		fill(255,255,51);
		ellipse((float)posX, (float)posY, mySize, mySize);
	}
	void move()
	{
		
		if (mySize >= 80) 
		{
			mySize = 80;
		}
	}
}

