void setup() {
  // put your setup code here, to run once:
  pinMode(D2, OUTPUT);
  pinMode(D3, OUTPUT);
  pinMode(D4, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(D2,LOW);
  delay(10000);

  digitalWrite(D3,LOW);
  delay(15000);

  digitalWrite(D4,LOW);
  delay(20000);
}
