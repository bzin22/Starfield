// Bryan Zin
// AP Computer Science - Block 3 - Mr.Simon

NormalParticle [] taylor; 

void setup()
{
	size(1000,1000);
	taylor = new NormalParticle[100];
	for (int i = 0; i < taylor.length; i++)
	{
		taylor[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	for (int i = 0; i < taylor.length; i++) 
	{
		taylor[i].show();
		taylor[i].move();
	}
}
class NormalParticle
{
	double posX; // position X
	double posY; // position Y
	int c; // color
	double speed; 
	double angle; // radians 
	NormalParticle ()
	{
		posX = 500;
		posY = 500;
		speed = (int)(Math.random()*10);
		angle = Math.PI * 2 * Math.random();
	}
	void move()
	{
		posX = Math.cos(angle * speed) + posX;
		posY = Math.sin(angle * speed) + posY;
	}
	void show()
	{
		fill(0,255,0);
		ellipse((float)posX, (float)posY, 10, 10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

