//Interface for button
interface ButtonInterface
{
  void paint(); 
  
  boolean buttonClicked (int xCoord, int yCoord); 

  void setBounds (Rectangle newBounds); 
  void setSize (int newWidth, int newHeight);   
  void setVisible2 (boolean isVisible);
  void setText (String newText);  
  void setEnabled (boolean isEnabled); 

  boolean isVisible2();
  String getText();
  boolean getEnabled();
  
  
  //My methods
  void setColour(int red, int green, int blue, int transparity);
  boolean getButtonToggled();
  void unToggle();
  boolean buttonIsPressed(int xCoord, int yCoord);   
}



//interface for rectangle
interface RectangleInterface {
  
  void setBounds(int newWidth, int newHeight, Coordinate newCoords);
  
  int getX();
  
  int getY();
  int getWidth();
  int getHeight();
  int getRight();
  int getBottom();
  int getCenterX();
  int getCenterY();
  int getArea();
  
  void setX (int newX);
  void setY (int newY);
  void setWidth (int newWidth);
  void setHeight (int newHeight);
  
  Coordinate getCenter();
  
  void trimLeft(int trimBy);
  void trimRight(int trimBy);
  void trimTop(int trimBy);
  void trimBottom(int trimBy);
  
  void setSizeWithKeepingCenter(int newWidth, int newHeight);
  void grow(int growBy);
  void shrink(int shrinkBy);
  
  void moveLeftBy(int moveBy);
  void moveRightBy(int moveBy);
  void moveUpBy(int moveBy);
  void moveDownBy(int moveBy);
  
  boolean withinRectangle(int xCoord, int yCoord);
  void paint();
}



//Interface for Coordinates
interface CoordinateInterface {  
  void setX(int newX);
  void setY(int newY);
  int getX();
  int getY();
  void modifyX(int modifyBy);
  void modifyY(int modifyBy);
}