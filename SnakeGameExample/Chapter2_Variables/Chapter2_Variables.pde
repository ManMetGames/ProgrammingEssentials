float snakeX = 5;
float snakeY = 5;
float appleX = 10;
float appleY = 5;
int size = 40;

size(640,440);
noStroke();
background(50);

fill(0,255,0);
rect(snakeX*size,snakeY*size,size,size);

fill(255,0,0);
rect(appleX*size, appleY*size, size, size);
