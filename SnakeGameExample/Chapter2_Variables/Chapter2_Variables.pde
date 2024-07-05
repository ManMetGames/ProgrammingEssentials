int snakeX = 200;
int snakeY = 200;
int appleX = 400;
int appleY = 200;
int size = 40;

size(640,440);
noStroke();
background(50);

fill(0,255,0);
rect(snakeX,snakeY,size,size);

fill(255,0,0);
rect(appleX, appleY, size, size);
