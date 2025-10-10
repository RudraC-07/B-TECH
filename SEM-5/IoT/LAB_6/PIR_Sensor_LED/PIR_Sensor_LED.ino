int pirValue = 0;
int pirPin = D0;
int pin = D3;

void setup() {
  // put your setup code here, to run once:
  pinMode(pirPin, INPUT);
  pinMode(D3, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  pirValue = digitalRead(pirPin);

  if(pirValue == 0){
    digitalWrite(D3,LOW);
  }
  else{
    digitalWrite(D3,HIGH);
  }
  
  delay(500);
  Serial.println(pirValue);
}
