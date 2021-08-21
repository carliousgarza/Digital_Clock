class Colon {

  int x;
  int y;

  Colon(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void show() {
    pushMatrix();
    translate(this.x, this.y);

    noStroke();
    fill(255,0,0);

    rect(0, 50, 10, 10);
    rect(0, 100, 10, 10);

    popMatrix();
  }
}
