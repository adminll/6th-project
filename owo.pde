//boolean varibles-
boolean rese = false;
//-----------------

//image varibles-----------------------
PImage img;
PImage lol;
//-------------------------------------

//ints for making imgs move and reset--
int dabX = 0;
int yeetX = 0;
int reset = 10;
//-------------------------------------

//setup & setting img and lol for pictures
void setup() {
  size(800,800);
  img =loadImage("9.jpg");
  lol =loadImage("heyyo.png");
}
//----------------------------------------

void draw() {
  
  //setup2-------------------------------
  background(0);
  //-------------------------------------
  
  //sqaure for reset
  stroke(255);
  strokeWeight(2);
  fill(145);
  rect(300,100,200,160);
  noStroke();
  //-----------------
  
  //text
  textSize(40);
  fill(255);
  textAlign(CENTER);
  text("Reset!",400,190);
  
  //images-------------------------------
  image(img,200,10+dabX);
  image(lol,600,10+yeetX);
  //-------------------------------------
  
  //if thinking emoji wins, prints "thinking emoji won!"
  if(dabX >= 780)
  {
    textAlign(CORNERS);
    fill(255);
    textSize(40);
    text("Thinking emoji wins!",200,400);
    println("Thinking emoji wins!");
  }
  //-----------------------------------------------------
  
  //if question mark wins, it prints "question mark won!"
  else if(yeetX >=780)
  {
    textAlign(CORNERS);
    fill(255);
    textSize(40);
    text("Question mark wins!",200,400);
    println("Question mark wins!");
  }
  //resets img and lol to their original postions
  if(rese == true)
    {
      dabX = dabX-dabX;
      yeetX = yeetX-yeetX;
    }
}
  //------------------------------------------------------
  
  //changes values for moving the pictures
  void keyPressed() {
    //makes img move
    if(key == 'a')
    {
      dabX = dabX+20;
      rese = false;
    }
    //makes lol move
    else if(key == 'l')
    {
      yeetX = yeetX+20;
      rese = false;
    }
    
  }
  //---------------------------------------
  
  //resets img and lol when reset button clicked
  void mouseClicked() {
  if(mouseX > 300 && mouseX < 600 && mouseY > 100 && mouseY <360)
  {
    rese = true;
  }
  }
