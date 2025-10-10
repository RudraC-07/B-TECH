int irValue = 0;
int irPin = D0;

void setup() {
  // put your setup code here, to run once:
  pinMode(irPin, INPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  irValue = digitalRead(irPin);
  delay(500);
  Serial.println(irValue);
}
