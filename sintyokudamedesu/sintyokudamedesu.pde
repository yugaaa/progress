float[] px=new float[6];
float[] py=new float[6];
float[] R=new float[6];
float[] a=new float[6];
PFont font;

void setup(){
  size(640,370);
  colorMode(HSB,360,100,100);
  textSize(50);
  textAlign(CENTER,CENTER);
  
  textFont(createFont("Meiryo-48.vlw",50));
  for(int i=0;i<6;i++){
    px[i]=width/2+120*cos(2*PI*i/6-PI/2);
    py[i]=height/2+120*sin(2*PI*i/6-PI/2);
    R[i]=200;
    a[i]=50;
  }
  
}

void draw(){
  background(40,100,100);
  
  noStroke();
  
  for(int i=0;i<6;i++){
    if(frameCount>=30+i*3 && frameCount<=54+i*3){
      fill(0,0,100,a[i]);
      ellipse(px[i],py[i],R[i],R[i]);
      R[i]+=(80-R[i])*0.3;
      a[i]+=(255-a[i])*0.08;
    }
    if(frameCount==85){
      R[i]=200;
      a[i]=50;
    }
    if(frameCount>=90){
      fill(0,0,100,a[i]);
      ellipse(px[i],py[i],R[i],R[i]);
      R[i]+=(80-R[i])*0.3;
      a[i]+=(255-a[i])*0.08;
    }
  }
  
  fill(40,100,100);
  if(frameCount>=90){
    translate(0,-8);
    text("進",px[0],py[0]);
    text("捗",px[1],py[1]);
    text("ダ",px[2],py[2]);
    text("メ",px[3],py[3]);
    text("で",px[4],py[4]);
    text("す",px[5],py[5]);
  }
}
