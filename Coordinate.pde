class Coordinate implements CoordinateInterface {
  
  int xCoordinate;
  int yCoordinate;
  
  Coordinate(int newX, int newY) {
    xCoordinate = newX;
    yCoordinate = newY;
  }
  
  Coordinate(Coordinate newCoordinate) {
    xCoordinate = newCoordinate.getX();
    yCoordinate = newCoordinate.getY();
  }
  
  void setX(int newX) {
    xCoordinate = newX;
  }
  
  void setY(int newY){
    yCoordinate = newY;    
  }
  
  int getX() {
    return xCoordinate;
  }
  
  int getY() {
    return yCoordinate;
  }
  
  void modifyX(int modifyBy) {
    xCoordinate = xCoordinate + modifyBy;
  }
  
  void modifyY(int modifyBy) {
    yCoordinate = yCoordinate + modifyBy;
  }
}