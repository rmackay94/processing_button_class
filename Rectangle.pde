class Rectangle implements RectangleInterface{
  
  Coordinate rectangleCoords;
  int rectangleWidth;
  int rectangleHeight;
  
  Rectangle(int newWidth, int newHeight, Coordinate newCoords) {
    rectangleCoords = newCoords;
    rectangleWidth = newWidth;
    rectangleHeight = newHeight;
  }
  
  void setBounds(int newWidth, int newHeight, Coordinate newCoords) {
    
    
    rectangleCoords = newCoords;
    rectangleWidth = newWidth;
    rectangleHeight = newHeight;
  }
  
  int getX() {
    return rectangleCoords.getX(); 
  }
  
  int getY() {
    return rectangleCoords.getY(); 
  }
  
  int getWidth() {
    return rectangleWidth; 
  }
  
  int getHeight() {
    return rectangleHeight; 
  }
  
  int getRight() {
    return rectangleCoords.getX() + rectangleWidth;
  }
  
  int getBottom() {
    return rectangleCoords.getY() + rectangleHeight;
  }
  
  int getCenterX() {
     return rectangleCoords.getX() + (rectangleWidth / 2);
  }
  
  int getCenterY() {
     return rectangleCoords.getY() + (rectangleHeight / 2);
  }
  
  void setX (int newX) {
    rectangleCoords.setX(newX); 
  }
  
  void setY (int newY) {
    rectangleCoords.setY(newY); 
  }
  
  void setWidth (int newWidth) {
    if (newWidth < 0) {
      println("Error: width set to less than 0");
    } else {
      rectangleWidth = newWidth;
    }
  }
  
  void setHeight (int newHeight) {
    
    if (newHeight < 0) {
      println("Error: height set to less than 0");
    } else {
      rectangleHeight = newHeight;
    }
  }
  
  Coordinate getCenter() {
    return new Coordinate(getCenterX(), getCenterY());
  }
  
  int getArea() {
    return rectangleWidth * rectangleHeight;
  }
  
  void trimRight(int trimBy) {
    setWidth(rectangleWidth - trimBy);
  }
  
  void trimLeft(int trimBy) {
    rectangleCoords.modifyX(trimBy);
    setWidth(rectangleWidth - trimBy);
  }
  
  void trimBottom(int trimBy) {
    setHeight(rectangleHeight - trimBy);
  }
  
    void trimTop(int trimBy) {
    rectangleCoords.modifyY(trimBy);
    setHeight(rectangleHeight - trimBy);
  }
  
  void setSizeWithKeepingCenter(int newWidth, int newHeight) {
    Coordinate oldCenter = new Coordinate(getCenterX(),getCenterY());
    setWidth(newWidth);
    setHeight(newHeight);
    rectangleCoords.modifyX((getCenterX() - oldCenter.getX()) *-1 );
    rectangleCoords.modifyY((getCenterY() - oldCenter.getY()) *-1 );
  }
  
  void shrink(int shrinkBy) {
    Coordinate oldCenter = new Coordinate(getCenterX(),getCenterY());
    setWidth(getWidth() - shrinkBy);
    setHeight(getHeight() - shrinkBy);
    rectangleCoords.modifyX((getCenterX() - oldCenter.getX()) *-1 );
    rectangleCoords.modifyY((getCenterY() - oldCenter.getY()) *-1 );
  }
  
  void grow(int growBy) {
    Coordinate oldCenter = new Coordinate(getCenterX(),getCenterY());
    setWidth(getWidth() + growBy);
    setHeight(getHeight() + growBy);
    rectangleCoords.modifyX((getCenterX() - oldCenter.getX()) *-1 );
    rectangleCoords.modifyY((getCenterY() - oldCenter.getY()) *-1 );
  }
  
  void moveLeftBy(int moveBy) {
    rectangleCoords.modifyX(moveBy*-1);
  }
  
  void moveRightBy(int moveBy) {
    rectangleCoords.modifyX(moveBy);
  }
  
  void moveUpBy(int moveBy) {
    rectangleCoords.modifyY(moveBy*-1);
  }
  
  void moveDownBy(int moveBy) {
    rectangleCoords.modifyY(moveBy);
  }
  
  
  //Is this necessary or appropriate????
  boolean withinRectangle(int xCoord, int yCoord) {
    if (xCoord > getX() && xCoord < getRight() && yCoord > getY() && yCoord < getBottom()) {
      return true;
    } else {
      return false;
    }
  }
  
  
  
  void paint() {
      rectMode(CORNER);
      rect(getX(), getY(), getWidth(), getHeight());
  }
  
}