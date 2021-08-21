void setup () {
  size(700, 250);
  frameRate(1);
}

void draw () {
  background(0);
  Number hour1 = new Number((hour() / 10), 0, 50);
  Number hour2 = new Number((hour() % 10), 100, 50);
  Number minute1 = new Number((minute() / 10), 200, 50);
  Number minute2 = new Number((minute() % 10), 300, 50);
  Number second1 = new Number((second() / 10), 400, 50);
  Number second2 = new Number((second() % 10), 500, 50);
  Colon colon1 = new Colon(195,40);
  Colon colon2 = new Colon(390,40);
  
  hour1.convertAndShow();
  hour2.convertAndShow();
  colon1.show();
  minute1.convertAndShow();
  minute2.convertAndShow();
  colon2.show();
  second1.convertAndShow();
  second2.convertAndShow();
}
