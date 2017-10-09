class Button implements ButtonInterface{
  
  //int xPosition;
  //int yPosition;
  //int buttonWidth;
  //int buttonHeight;
  Rectangle bounds;
  String buttonText;
  boolean buttonIsToggled;
  color buttonColour;
  boolean buttonPressed;
  boolean buttonIsEnabled;
  boolean buttonIsVisible;
  
  // values provided are stored above
  Button() {  
    
    bounds = new Rectangle(0,0,new Coordinate(0,0));
    buttonText = "";
    buttonPressed = false;
    buttonColour = color(255,255,255,255);
    buttonIsEnabled = false;
    buttonIsVisible = false;
  }
  
  Button(Rectangle newBounds,String newText,color newColour,boolean newEnabled,boolean newVisible) {
    bounds = newBounds;
    buttonText = newText;
    buttonPressed = false;
    buttonColour = newColour;
    buttonIsEnabled = newEnabled;
    buttonIsVisible = newVisible;
  }
  
  
  void setBounds(Rectangle newBounds) {
    bounds = newBounds;
  }
  
  void setText(String buttonText2) {
    buttonText = buttonText2;
  }
  
  void setColour(int red, int green, int blue, int transparity) {
    buttonColour = color(red,green,blue,transparity);
  }
  
  
  // If mouse is over button, marks that the button has been clicked
  boolean buttonClicked(int xCoord, int yCoord) {
    boolean buttonIsClicked = false;
    //if (xCoord > bounds.getX() && xCoord < bounds.getRight() && yCoord > bounds.getY() && yCoord < bounds.getBottom() && buttonIsEnabled == true) {
      if (bounds.withinRectangle(xCoord, yCoord) == true && buttonIsEnabled == true) {
      buttonIsClicked = true;
      
      if (buttonIsToggled == false) {
        buttonIsToggled = true;
      } else {
        buttonIsToggled = false;
      }
    }
    return buttonIsClicked;
  }
  
  
  
  // returns true if button has been clicked otherwise returns false
  boolean getButtonToggled() {
    return buttonIsToggled;
  }
  
  
  // Method to draw button
  void paint() {
    if ( buttonIsVisible == true) {
      buttonIsPressed(mouseX, mouseY);
      if (buttonIsPressed(mouseX, mouseY) == true) {
        strokeWeight(5);
      } else {
        strokeWeight(1);
      }
      stroke(0);
      fill(buttonColour);
      bounds.paint();
      textAlign(CENTER,CENTER);
      fill(0);
      Coordinate textCoords = new Coordinate(bounds.getCenter());
      text(buttonText,textCoords.getX(),textCoords.getY());
    }    
  }
  
  
  
  void unToggle() {
    buttonIsToggled = false;
  }
  
  
  boolean buttonIsPressed(int xCoord, int yCoord) {
    boolean i = false;
    if (mousePressed == true) {
      if (xCoord > bounds.getX() && xCoord < bounds.getRight() && yCoord > bounds.getY() && yCoord < bounds.getBottom() && buttonIsEnabled == true) {
        i = true;
      }
    } else {
      i = false;
    }
    
    if (buttonIsEnabled == true) {
      return i;
    } else {
      return false;
    }
  }
  
  void setSize (int newWidth, int newHeight) {
    bounds.setWidth(newWidth);
    bounds.setHeight(newHeight); 
  }
    
  void setEnabled (boolean isEnabled) {
    buttonIsEnabled = isEnabled;      
  }
  
  void setVisible2 (boolean isVisible) {
    buttonIsVisible = isVisible;
  }
  
  boolean isVisible2() {
    return buttonIsVisible;
  }
  
  String getText() {
    return buttonText;
  }
  
  boolean getEnabled() {
    return buttonIsEnabled;
  }
  
}