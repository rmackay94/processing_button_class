 /*
 Robbie Mackay
 Student No. 16003059
 HND Compter Science
 
 09/10/2017
 Object Oriented Programming-Button class
 
 Adding Rectangle and Coordinate classes
 */
  
  
  Button button1;
  Button button2;
  Button button3;
  Button button4;
  Button button5;
  Button button6;
  
  Button button7;
  
  Button button8;
  
  Button button9;
  Button button10;
  Button button11;
  Button button12;
  Button button13;
  Button button14;
  Button button15;
  Button button16;
  Rectangle movingRectangle;
  
  int backColour;
  int lastBackColour;
  int lastBackColour2;




void setup() {
  size(900,700);
    button1 = new Button();
      button1.setBounds(new Rectangle(300,50,new Coordinate(50,50)));
      button1.setText("Click Here...");
      button1.setColour(147,153,200,255);
      button1.setEnabled(true);
      button1.setVisible2(true);
    button2 = new Button();
      button2.setBounds(new Rectangle(100,100,new Coordinate(50,150)));
      button2.setText("...And Here");
      button2.setColour(147,153,200,255); 
      button2.setEnabled(true);
      button2.setVisible2(true);
    button3 = new Button();
      button3.setBounds(new Rectangle(100,50,new Coordinate(300,300)));
      button3.setText("Hold Down");
      button3.setColour(147,153,200,255);   
      button3.setEnabled(true);
      button3.setVisible2(true);
      
    button4 = new Button();
      button4.setBounds(new Rectangle(250,50,new Coordinate(50,400)));
      button4.setText("This button enables the next button");
      button4.setColour(147,153,200,255);
      button4.setEnabled(true);
      button4.setVisible2(true);      
    button5 = new Button();
      button5.setBounds(new Rectangle(250,50,new Coordinate(350,400)));
      button5.setText("This button makes another button visible");
      button5.setColour(147,153,200,255);
      button5.setEnabled(false);
      button5.setVisible2(true);      
    button6 = new Button();
      button6.setBounds(new Rectangle(250,50,new Coordinate(50,500)));
      button6.setText("This button disables the first button");
      button6.setColour(147,153,200,255);
      button6.setEnabled(false);
      button6.setVisible2(false);
      
    button7 = new Button();
      button7.setBounds(new Rectangle(300,50,new Coordinate(50,600)));
      button7.setText("Toggle");
      button7.setColour(147,153,200,255);
      button7.setEnabled(true);
      button7.setVisible2(true);
      
     button8 = new Button(new Rectangle(90,30,new Coordinate(600,50)), "Increase Size", color(147, 153, 200, 255), true, true);
     
     button9 = new Button(new Rectangle(90,30,new Coordinate(650,100)), "Move Up", color(255,100,100,255), true, true);
     button10 = new Button(new Rectangle(90,30,new Coordinate(650,200)), "Move Down", color(255,100,100,255), true, true);
     button11 = new Button(new Rectangle(90,30,new Coordinate(600,150)), "Move Left", color(255,100,100,255), true, true);
     button12 = new Button(new Rectangle(90,30,new Coordinate(700,150)), "Move Right", color(255,100,100,255), true, true);
     button13 = new Button(new Rectangle(90,30,new Coordinate(700,250)), "Grow", color(255,100,100,255), true, true);
     button14 = new Button(new Rectangle(90,30,new Coordinate(600,250)), "Shrink", color(255,100,100,255), true, true);
     button15 = new Button(new Rectangle(90,30,new Coordinate(700,300)), "Trim Left", color(100,255,100,255), true, true);
     button16 = new Button(new Rectangle(90,30,new Coordinate(600,300)), "Trim Top", color(100,255,100,255), true, true);
     movingRectangle = new Rectangle(90,30,new Coordinate(650,600));
      
      backColour = 255;
      lastBackColour = 255;
    background(backColour);
}




void draw() {  
  
  //if button3 is pressed and background is not 50 then store the current colour and make backColour 50
  if (button3.buttonIsPressed(mouseX, mouseY) == true) {
    if (backColour != 50) { 
      lastBackColour = backColour;
      backColour = 50;
    }
  } else if (button3.buttonIsPressed(mouseX, mouseY) == false && backColour == 50) {
    backColour = lastBackColour;
  }
  
  //if button7 is toggled on the make the background 0
  if (button7.getButtonToggled() == true) {
    backColour = 0;
  }
  
  //draw background then draw buttons
  background(backColour);
  button1.paint();
  button2.paint();  
  button3.paint();
  button4.paint();
  button5.paint();
  button6.paint();
  button7.paint();
  button8.paint();
  button9.paint();
  button10.paint();
  button11.paint();
  button12.paint();
  button13.paint();
  button14.paint();
  button15.paint();
  button16.paint();
  
  strokeWeight(1);
  stroke(0);
  fill(0);
  movingRectangle.paint();
}





void mouseClicked() {
    
  if (button1.buttonClicked(mouseX, mouseY) == true) {
    backColour = 100;
  }     
  if (button2.buttonClicked(mouseX, mouseY) == true) {
    backColour = 200;
  }
  if (button4.buttonClicked(mouseX, mouseY) == true) {
    if (button5.getEnabled() == false) {
      button5.setEnabled(true);
    } else {
      button5.setEnabled(false);
    }
  }
  if (button5.buttonClicked(mouseX, mouseY) == true) {
    if (button6.isVisible2() == false) {
      button6.setVisible2(true);
      button6.setEnabled(true);
    } else {
      button6.setVisible2(false);
      button6.setEnabled(false);
    }
  }
  if (button6.buttonClicked(mouseX, mouseY) == true) {
    if (button1.isVisible2() == true) {
      button1.setVisible2(false);
      button1.setEnabled(false);
    } else {
      button1.setVisible2(true);
      button1.setEnabled(true);
    }
  }
  
  //if button7 is toggled on store current colour and make backColour 0. If its toggled off make backColour = lastBackColour
  if (button7.buttonClicked(mouseX, mouseY) == true) {
    if (button7.getButtonToggled() == true) {
      lastBackColour2 = backColour;
      backColour = 0;
    } else if (button7.getButtonToggled() == false) {
      backColour = lastBackColour2;
    }
  }
  
  
  if (button8.buttonClicked(mouseX, mouseY) == true) {
    button8.bounds.setSizeWithKeepingCenter(150, 60);
  }
  
  
  if (button9.buttonClicked(mouseX, mouseY) == true) {
    movingRectangle.moveUpBy(5);
  } 
  
  if (button10.buttonClicked(mouseX, mouseY) == true) {
    movingRectangle.moveDownBy(5);
  } 
  
  if (button11.buttonClicked(mouseX, mouseY) == true) {
    movingRectangle.moveLeftBy(5);
  } 
  
  if (button12.buttonClicked(mouseX, mouseY) == true) {
    movingRectangle.moveRightBy(5);
  } 
  
  if (button13.buttonClicked(mouseX, mouseY) == true) {
    movingRectangle.grow(5);
  }
  
  if (button14.buttonClicked(mouseX, mouseY) == true) {
    movingRectangle.shrink(5);
  }
  
  if (button15.buttonClicked(mouseX, mouseY) == true) {
    movingRectangle.trimLeft(5);
  }
  
  if (button16.buttonClicked(mouseX, mouseY) == true) {
    movingRectangle.trimTop(5);
  }
}