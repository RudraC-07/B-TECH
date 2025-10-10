#define trigPin D4
#define echoPin D5

long duration;
int distance;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(trigPin,LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin,HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin,LOW);
  delayMicroseconds(2);

  duration = pulseIn(echoPin,HIGH);
  distance = (0.034/2*duration);

  Serial.print("Distance : ");
  Serial.print(distance);
  Serial.println(" cm");
}
