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
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380, 10, 0.1);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{  
    if (branchLength <= 1) return;
	line((float)x, (float)y, (float)(x+Math.cos(angle) * branchLength), (float)(y-Math.sin(angle) * branchLength));   
	line((float)x, (float)y, (float)(x-Math.cos(angle) * branchLength), (float)(y-Math.sin(angle) * branchLength));   
    drawBranches((int)(x+Math.cos(angle)*branchLength), (int)(y-Math.sin(angle) * branchLength), branchLength/1.2, angle * 1.5);

    drawBranches((int)(x-Math.cos(angle)*branchLength), (int)(y-Math.sin(angle) * branchLength), branchLength/1.2, angle * 1.5);
} 
