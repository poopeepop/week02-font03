/**
* A kinda hard "E" adapted from yuta's super simple F drawn by rectangle
  matrixes. 
  tzuhsuan.yang 26/08/2012
  a0071302@nus.edu.sg
*/


size(400,400);
background(205);
noStroke();
fill(0);

int [] x = {120,290,180,270,180,120,290};
int [] y = {80,130,180,230,270, 270,320};

int Y; //index variable for Y
int X; //index variable for X 
float grain_size = 8; // <- try to change this
float dot_size = grain_size * 0.9; 
smooth();

int i;
for(i = 0; i < 6; i++ ){
  for(Y = y[i]; Y < y[i+1]; Y = Y + int(grain_size)){
    for(X = x[0]; X < x[i+1]; X = X + int(grain_size)){
    //rect(X,  Y , grain_size, grain_size);
    float d = map(X,x[0],x[i+1],dot_size,dot_size * 0.3);
    //rect( X , Y , d, d);
    ellipse( X  , Y  , d, d);
    }
  }
}

save("font03.jpg");
