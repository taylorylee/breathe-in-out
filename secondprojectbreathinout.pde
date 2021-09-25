import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

boolean starting=false;

float size = 10; 
float minSize =10;
float maxSize = 300;
float sizeSpeed = 0.010;


Minim minim;
AudioPlayer player;

int index = 0;

PImage img; 
PFont font1;

String textdisplay;
String[] textarrays;
String texttitle;

void setup(){
  String[] text= {
 "Take your time.",
 "Turn on your sound if you'd like to listen",
 "Click everytime the circle gets smaller",
  "Concentrate on the size of the circle.",
  "Breath in as the circle gets larger.",
  "Breath out as the circle gets smaller.",
  "Breath in for 4 seconds.",
  "Breath out for 8 seconds.",
  "It's okay to feel this way.",
  "This is going to be tough but you will get through this!",
  "Pause for 7 seconds.",
  "Keep doing this while you are clicking",
  "A 4-7-8 pattern",
  "You are strong and resilient.",
  "It's okay not to be okay",
  "Be patient with yourself.",
  "You got this!",
  "Today is going to be a great day!",
  "Aim for progress, not perfection.",
  "Talk to someone, anyone!",
  "Never be ashamed of needing help, you matter!",
  "Jam out to your favorite song.",
  "Go outside in nature, do some art!",
  "Take a nap, eat some food.",
  "You are loved.",
  "Imagine you are in your favorite place",
  "With the people you enjoy hanging out with",
  "Repeat the word calm",
  "Release the fear",
  "If you'd like, start over by exiting and restarting",
  };
  textarrays=text;
  //print(textarrays[12]);
minim = new Minim(this);
player = minim.loadFile("bensound-energy.mp3");
player.play();
font1 = loadFont("Constantia-36.vlw");



texttitle = "Words of Affirmation";
  textdisplay = "Click here to start";
  
  
 size(1705,673);  
//background(70, 130, 180);


img = loadImage("twentypinemountains.png");
}

void draw(){
 clear();
 
 background(70, 130, 180);
noTint(); //disable tint
imageMode (CENTER);
  image(img,width/2,height/2); 
  
  
  noStroke();
  size = map(sin(frameCount * sizeSpeed),-1.0,1.0,minSize,maxSize);
  //noStroke();
  fill(255,195,0);
  ellipseMode(CENTER);
  ellipse(width/2,height/2,size,size);
  

 fill(255,160,122);
 textAlign(CENTER, BASELINE);
 textSize(50);
 text(texttitle,width/2, height/4);

fill(0);
textAlign(TOP);
textSize(12);
text("Reduce stress and anxiety", width/12, height/12);

fill(0);
textAlign(CENTER);
textSize(25);
 text(textdisplay, width/2,height/2); 
 
 
 fill(0);
 textAlign(TOP);
 textSize(9);
 text("Created by Taylor L. 2018", width/16, height/16);
}
 void textcycle() {
   print("textcycle()");
   texttitle = textarrays[
    index++
    ];
 }
 
  void mouseClicked(){
  //textcycle(); 
  if(!starting)
  textdisplay = "Welcome! Lets get started.";
  System.out.println("Welcome! Lets get started.");
  //int s = second();
  //line(s, 0, s, 5);
  
System.out.println("Take your time.");  
if(starting){
 textdisplay="";
  textcycle();
}
starting=true;
}


//have the circle increase in size, then decrease to breathing pattern
//regular breathing: 4-7-8
//have words pop out everytime

//created by taylor lee 2018 in idtech ucsd camp 