class Number {

  int x;
  int y;
  int digit;

  Number(int digit, int x, int y) {
    this.x = x;
    this.y = y;
    this.digit = digit;
  }

  void convertAndShow() {
    switch(this.digit) {
    case 0:
        show(0x7E);
      break;
    case 1:
      show(0x30);
      break;
    case 2:
      show(0x6D);
      break;
    case 3:
      show(0x79);
      break;
    case 4:
      show(0x33);
      break;
    case 5:
      show(0x5B);
      break;
    case 6:
      show(0x5F);
      break;
    case 7:
      show(0x70);
      break;
    case 8:
      show(0x7F);
      break;
    case 9:
      show(0x7B);
      break;
    }
  }

  color state (int value, int shifts) {
    int r = 255;
    int g = 0;
    int b = 0;
    int a = 255 * ((value>>shifts)&1);

    return color(r, g, b, a);
  }

  void show (int value) {
    
    pushMatrix();
    translate(this.x, this.y);
    
    noStroke();
    noFill();

    //A
    fill(state(value, 6));
    rect(30, 10, 40, 10);

    //B
    fill(state(value, 5));
    rect(70, 20, 10, 40);

    //C
    fill(state(value, 4));
    rect(70, 70, 10, 40);

    //D
    fill(state(value, 3));
    rect(30, 110, 40, 10);

    //E
    fill(state(value, 2));
    rect(20, 70, 10, 40);

    //F
    fill(state(value, 1));
    rect(20, 20, 10, 40);

    //G
    fill(state(value, 0));
    rect(30, 60, 40, 10);

    popMatrix();
  }
}
