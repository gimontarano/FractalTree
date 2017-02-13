private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(255);   
	line(320,480,320,380);   
	drawBranches(320, 380, 50, Math.PI/6);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	int cos = (int)(Math.cos(angle)*branchLength*fractionLength);
	int sin = (int)(Math.sin(angle)*branchLength*fractionLength);
	int branchMove = (int)(branchLength*fractionLength);
	int branch = (int)(branchLength);
	int branchA = (int)(angle);

	if(branchLength <= smallestBranch)
	{
		line(x, y, x, (int)(y-branchLength));  
	}
	else
	{
		//line(x, y, x, (int)(y-branchLength));
		line(x, y, x + cos, y - branch - sin);
		line(x, y, x - cos, y - branch - sin);
		drawBranches(x + cos, y - branch - sin, branchMove, branchA + Math.PI/6);
		drawBranches(x - cos, y - branch - sin, branchMove, branchA - Math.PI/6);
		drawBranches(x + cos, y - branch - sin, branchMove, branchA - Math.PI/6);
		drawBranches(x - cos, y - branch - sin, branchMove, branchA + Math.PI/6);
	}
	

} 
