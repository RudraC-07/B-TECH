int irValue = 0;
int irPin = D0;
int pin = D3;

void setup() {
  // put your setup code here, to run once:
  pinMode(irPin, INPUT);
  pinMode(D3, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  irValue = digitalRead(irPin);

  if(irValue == 0){
    digitalWrite(D3,LOW);
  }
  else{
    digitalWrite(D3,HIGH);
  }
  
  delay(500);
  Serial.println(irValue);
}
