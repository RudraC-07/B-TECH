int pirValue = 0;
int pirPin = D0;

void setup() {
  // put your setup code here, to run once:
  pinMode(pirPin, INPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  pirValue = digitalRead(pirPin);
  Serial.println(pirValue);
  delay(500);
}
