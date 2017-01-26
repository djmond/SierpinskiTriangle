
public void setup()
{
	size(600, 600);
}
public void draw()
{
	sierpinski(0,600,600);
}
public void mouseDragged()//optional
{
	
}
public void sierpinski(int x, int y, int len) 
{
	if(len<100){

		triangle(x,y,x+len,y,x+len/2,y-len);
		triangle(x+len/4,y-len/2,x+len/2,y,x+len*3/4,y-len/2);
	}
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);

	}
}